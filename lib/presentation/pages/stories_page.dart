import 'package:flutter/material.dart';
import 'package:mauzy_story_app/common/images_path.dart';
import 'package:mauzy_story_app/core.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  @override
  void initState() {
    context.read<ListStoryBloc>().add(const ListStoryEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Mauzy Story",
              style:
                  logoStyle.copyWith(fontSize: 28, fontWeight: FontWeight.w100),
            ),
            Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagePaths.arrowDown),
                ),
              ),
            )
          ],
        ),
        actions: [
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) => state.mapOrNull(
              loggedOut: (value) => context.goNamed(Routes.login),
            ),
            builder: (context, state) => state.maybeMap(
              loading: (value) => const Center(
                child: CircularProgressIndicator(),
              ),
              orElse: () {
                return IconButton(
                    onPressed: () => context.read<AuthBloc>().add(
                          const AuthEvent.doLogout(),
                        ),
                    icon: const Icon(Icons.logout_rounded));
              },
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: BlocBuilder<ListStoryBloc, ListStoryState>(
        builder: (context, state) => state.maybeMap(
          orElse: () => _buildLoading(),
          loading: (_) => _buildLoading(),
          error: (data) => _buildMessage(data.message),
          loaded: (value) {
            final listStory = value.data.listStory;
            if (listStory.isEmpty) {
              _buildMessage(AppLocalizations.of(context)!.noData);
            }
            return ListView.builder(
              itemCount: listStory.length,
              itemBuilder: (context, index) {
                final data = listStory[index];
                return StoryCardWidget(data: data);
              },
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImagePaths.home),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => context.goNamed(Routes.addStory),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImagePaths.upload),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => context.goNamed(Routes.profile),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(ImagePaths.avatar),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessage(String message) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          message,
          style: greyTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
