import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:mauzy_story_app/core.dart';

class AddStoryPage extends StatefulWidget {
  const AddStoryPage({super.key});

  @override
  State<AddStoryPage> createState() => _AddStoryPageState();
}

class _AddStoryPageState extends State<AddStoryPage> {
  bool isButtonEnabled = false;
  double? lat;
  double? lon;
  late TextEditingController descriptionController;
  late TextEditingController addLocationController;
  late UploadBloc uploadProvider;
  late AddStoryBloc addStoryProvider;
  late AddLocationBloc addLocationProvider;

  @override
  void initState() {
    super.initState();
    descriptionController = TextEditingController();
    addLocationController = TextEditingController();
    uploadProvider = context.read<UploadBloc>();
    addStoryProvider = context.read<AddStoryBloc>();
    addLocationProvider = context.read<AddLocationBloc>();
  }

  @override
  void dispose() {
    descriptionController.dispose();
    addLocationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.newStoryTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _buildImageOrPlaceholder(),
            _buildActionButtons(),
            if (FlavorConfig.instance.flavor == FlavorType.paid)
              _buildPaidFeatureWidget(),
            const SizedBox(height: 10.0),
            _buildDescriptionSection(),
            const SizedBox(height: 90.0),
          ],
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
          listener: (context, state) => _handleUploadState(context, state),
          builder: (context, state) => _buildUploadButton(context, state),
        ),
      ),
    );
  }

  Widget _buildImageOrPlaceholder() {
    return BlocBuilder<AddStoryBloc, AddStoryState>(
      builder: (context, state) {
        final imagePath = state.imagePath;
        return (imagePath == null)
            ? Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.image,
                  size: 100,
                  color: greyFieldColor,
                ),
              )
            : Column(
                children: [
                  _showImage(imagePath),
                  _buildClearImageButton(),
                ],
              );
      },
    );
  }

  Widget _showImage(String imagePath) {
    return kIsWeb
        ? Image.network(
            imagePath,
            fit: BoxFit.contain,
          )
        : Image.file(
            File(imagePath),
            fit: BoxFit.contain,
          );
  }

  Widget _buildClearImageButton() {
    return IconButton(
      onPressed: () => addStoryProvider.add(const AddStoryEvent.clearImage()),
      icon: Icon(
        Icons.cancel_outlined,
        color: Colors.red.shade300,
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildElevatedButton(
          icon: Icons.image,
          label: AppLocalizations.of(context)!.buttonGallery,
          onPressed: () => _onGalleryView(),
        ),
        const SizedBox(width: 10.0),
        _buildElevatedButton(
          icon: Icons.camera_alt,
          label: AppLocalizations.of(context)!.buttonCamera,
          onPressed: () => _onCameraView(),
        ),
      ],
    );
  }

  Widget _buildElevatedButton({
    required IconData icon,
    required String label,
    required void Function() onPressed,
  }) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
    );
  }

  Widget _buildPaidFeatureWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.addLocation,
          style: blackTextStyle,
        ),
        const SizedBox(height: 10.0),
        BlocBuilder<AddLocationBloc, AddLocationState>(
          builder: (context, state) {
            lat = state.lat;
            lon = state.lon;
            String? address = state.address;

            if (address != null) {
              addLocationController.text = address;
            } else {
              addLocationController.clear();
            }

            return Column(
              children: [
                if (lat != null || lon != null) _buildMapContainer(state),
                if (address != null) _buildClearLocationButton(),
                _buildLocationTextField(),
              ],
            );
          },
        ),
        const SizedBox(height: 10.0),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () => context.goNamed(Routes.addLocation),
          label: Text(AppLocalizations.of(context)!.addLocation),
          icon: const Icon(Icons.add_location),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }

  Widget _buildMapContainer(AddLocationState state) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(20),
      ),
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          zoom: 18,
          target: LatLng(state.lat!, state.lon!),
        ),
        markers: {
          Marker(
              markerId: const MarkerId("source"),
              position: LatLng(state.lat!, state.lon!),
              infoWindow: InfoWindow(
                title: 'Lokasi',
                snippet: addLocationController.text,
              ))
        },
        myLocationEnabled: false,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        mapToolbarEnabled: false,
      ),
    );
  }

  Widget _buildClearLocationButton() {
    return IconButton(
      onPressed: () =>
          addLocationProvider.add(const AddLocationEvent.clearLocation()),
      icon: Icon(
        Icons.cancel_outlined,
        color: Colors.red.shade300,
      ),
    );
  }

  Widget _buildLocationTextField() {
    return TextFieldWidget(
      controller: addLocationController,
      hintText: AppLocalizations.of(context)!.addLocation,
      enabled: false,
      height: (addLocationController.text.length > 25) ? 100 : 60,
      maxLines: (addLocationController.text.length > 25) ? 2 : 1,
      suffixIcon: const Icon(Icons.location_on_rounded),
    );
  }

  Widget _buildDescriptionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.descriptionTitle,
          style: blackTextStyle,
        ),
        const SizedBox(height: 8.0),
        TextFieldWidget(
          height: 100,
          maxLines: 4,
          controller: descriptionController,
          hintText: AppLocalizations.of(context)!.descriptionField,
        ),
      ],
    );
  }

  void _handleUploadState(BuildContext context, UploadState state) {
    state.mapOrNull(
      error: (value) => snackBar(context, value.message),
      uploaded: (value) {
        context
            .read<ListStoryBloc>()
            .add(const ListStoryEvent.getAllStories(null));
        context
            .read<ListStoryBloc>()
            .add(const ListStoryEvent.getAllStories(1));
        context.goNamed(Routes.stories);
        addStoryProvider.add(const AddStoryEvent.clearImage());
        addLocationProvider.add(const AddLocationEvent.clearLocation());
        return;
      },
    );
  }

  Widget _buildUploadButton(BuildContext context, UploadState state) {
    final imagePath = addStoryProvider.state.imagePath;
    final imageFile = addStoryProvider.state.imageFile;

    descriptionController.addListener(() {
      isButtonEnabled = (imagePath != null &&
          imageFile != null &&
          descriptionController.text.isNotEmpty);
      setState(() {});
    });

    return state.maybeMap(
      orElse: () => ElevatedButtonWidget(
        label: AppLocalizations.of(context)!.buttonUpload,
        onPressed: (isButtonEnabled) ? () => _onUpload() : null,
      ),
      uploading: (value) => _buildLoading(),
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  void _onUpload() async {
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
      lat,
      lon,
    ));
  }

  void _onGalleryView() async {
    final provider = context.read<AddStoryBloc>();
    final isMacOS = defaultTargetPlatform == TargetPlatform.macOS;
    final isLinux = defaultTargetPlatform == TargetPlatform.linux;
    if (isMacOS || isLinux) return;

    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    provider.add(AddStoryEvent.setImage(pickedFile?.path, pickedFile));
  }

  void _onCameraView() async {
    final isAndroid = defaultTargetPlatform == TargetPlatform.android;
    final isiOS = defaultTargetPlatform == TargetPlatform.iOS;
    final isNotMobile = !(isAndroid || isiOS);
    if (isNotMobile) return;

    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      addStoryProvider.add(AddStoryEvent.setImage(pickedFile.path, pickedFile));
    }
  }
}
