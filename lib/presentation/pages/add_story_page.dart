import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

class AddStoryPage extends StatefulWidget {
  const AddStoryPage({super.key});

  @override
  State<AddStoryPage> createState() => _AddStoryPageState();
}

class _AddStoryPageState extends State<AddStoryPage> {
  late TextEditingController descriptionController;
  bool isButtonEnabled = false;
  late UploadBloc uploadProvider;
  late AddStoryBloc addStoryProvider;
  @override
  void initState() {
    super.initState();
    descriptionController = TextEditingController();
    uploadProvider = context.read<UploadBloc>();
    addStoryProvider = context.read<AddStoryBloc>();
  }

  @override
  void dispose() {
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.newStoryTitle),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              (context.watch<AddStoryBloc>().state.imagePath == null)
                  ? Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.image,
                        size: 100,
                        color: greyFieldColor,
                      ),
                    )
                  : _showImage(),
              if (addStoryProvider.state.imagePath != null)
                IconButton(
                  onPressed: () =>
                      addStoryProvider.add(const AddStoryEvent.clearImage()),
                  icon: Icon(
                    Icons.cancel_outlined,
                    color: Colors.red.shade300,
                  ),
                ),
              const SizedBox(
                height: 10.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () => _onGalleryView(),
                      icon: const Icon(Icons.image),
                      label: Text(AppLocalizations.of(context)!.buttonGallery),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () => _onCameraView(),
                      icon: const Icon(Icons.camera_alt),
                      label: Text(AppLocalizations.of(context)!.buttonCamera),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () async => _onCustomCameraView(),
                      icon: const Icon(Icons.camera),
                      label: Text(
                          AppLocalizations.of(context)!.buttonCustomCamera),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)!.descriptionTitle,
                  style: blackTextStyle,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextFieldWidget(
                height: 100,
                maxLines: 4,
                controller: descriptionController,
                hintText: AppLocalizations.of(context)!.descriptionField,
              ),
              const SizedBox(
                height: 90.0,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: whiteColor,
          border: Border(
            top: BorderSide(
              color: greyTextColor,
              width: 0.5,
            ),
          ),
        ),
        child: BlocConsumer<UploadBloc, UploadState>(
          listener: (context, state) => state.mapOrNull(
            error: (value) => snackBar(context, value.message),
            uploaded: (value) {
              context.read<ListStoryBloc>().add(const ListStoryEvent.get());
              context.goNamed(Routes.stories);
              return;
            },
          ),
          builder: (context, state) {
            final imagePath = addStoryProvider.state.imagePath;
            final imageFile = addStoryProvider.state.imageFile;

            descriptionController.addListener(() {
              isButtonEnabled = imagePath != null &&
                  imageFile != null &&
                  descriptionController.text.isNotEmpty;
              setState(() {});
            });

            return state.maybeMap(
                orElse: () => ElevatedButtonWidget(
                      label: AppLocalizations.of(context)!.buttonUpload,
                      onPressed: (isButtonEnabled) ? () => _onUpload() : null,
                    ),
                uploading: (value) => _buildLoading());
          },
        ),
      ),
    );
  }

  _onUpload() async {
    final loginInfo = await LoginInfoPreference().getLoginInfo();
    final token = loginInfo!.token;

    final imagePath = addStoryProvider.state.imagePath;
    final imageFile = addStoryProvider.state.imageFile;

    if (imagePath == null || imageFile == null) return;

    final fileName = imageFile.name;
    final bytes = await imageFile.readAsBytes();
    final newBytes = await uploadProvider.compressImage(bytes);

    uploadProvider.add(UploadEvent.addStory(
      token,
      newBytes,
      fileName,
      descriptionController.text,
    ));

    uploadProvider.state.mapOrNull(
      error: (value) => snackBar(context, value.message),
      uploaded: (value) {
        addStoryProvider.add(const AddStoryEvent.setImage(null, null));
      },
    );
  }

  _onGalleryView() async {
    final provider = context.read<AddStoryBloc>();
    final isMacOS = defaultTargetPlatform == TargetPlatform.macOS;
    final isLinux = defaultTargetPlatform == TargetPlatform.linux;
    if (isMacOS || isLinux) return;

    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );

    provider.add(AddStoryEvent.setImage(pickedFile?.path, pickedFile));
  }

  _onCameraView() async {
    final isAndroid = defaultTargetPlatform == TargetPlatform.android;
    final isiOS = defaultTargetPlatform == TargetPlatform.iOS;
    final isNotMobile = !(isAndroid || isiOS);
    if (isNotMobile) return;

    final picker = ImagePicker();

    final pickedFile = await picker.pickImage(
      source: ImageSource.camera,
    );

    if (pickedFile != null) {
      addStoryProvider.add(AddStoryEvent.setImage(pickedFile.path, pickedFile));
    }
  }

  _onCustomCameraView() async {
    final navigator = Navigator.of(context);

    final isAndroid = defaultTargetPlatform == TargetPlatform.android;
    final isiOS = defaultTargetPlatform == TargetPlatform.iOS;
    final isNotMobile = !(isAndroid || isiOS);
    if (isNotMobile) return;

    final List<CameraDescription> cameras = await availableCameras();

    final XFile? resultImageFile = await navigator.push(
      MaterialPageRoute(
        builder: (context) => CameraPage(
          cameras: cameras,
        ),
      ),
    );

    if (resultImageFile != null) {
      addStoryProvider
          .add(AddStoryEvent.setImage(resultImageFile.path, resultImageFile));
    }
  }

  Widget _showImage() {
    final imagePath = context.read<AddStoryBloc>().state.imagePath;
    return kIsWeb
        ? Image.network(
            imagePath.toString(),
            fit: BoxFit.contain,
          )
        : Image.file(
            File(imagePath.toString()),
            fit: BoxFit.contain,
          );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
