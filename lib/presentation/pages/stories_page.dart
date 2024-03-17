import 'package:flutter/material.dart';

import 'package:mauzy_story_app/core.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  final ScrollController _scrollController = ScrollController();
  int? pageItems = 1;

  @override
  void initState() {
    context.read<ListStoryBloc>().add(const ListStoryEvent.getAllStories(1));
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        if (mounted) {
          pageItems = pageItems! + 1;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.read<ListStoryBloc>().add(
                  ListStoryEvent.getAllStories(pageItems),
                );
          });
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              FlavorConfig.instance.values.titleApp,
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
      body: BlocConsumer<ListStoryBloc, ListStoryState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () {},
              loaded: (data) {
                snackBar(
                  context,
                  AppLocalizations.of(context)!.loading,
                  isLoading: true,
                );
              });
        },
        builder: (context, state) => state.maybeMap(
          orElse: () => _buildMessage(AppLocalizations.of(context)!.noData),
          loading: (_) => _buildLoading(),
          error: (data) => _buildMessage(data.errorMessage),
          loaded: (value) {
            return ListView.builder(
              itemCount: value.stories.length,
              itemBuilder: (context, index) {
                if (value.stories.isEmpty) {
                  return _buildMessage(AppLocalizations.of(context)!.noData);
                }
                if (value.stories.length == 10) pageItems = 1;
                final data = value.stories[index];
                return StoryCardWidget(data: data);
              },
              controller: _scrollController,
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
                GestureDetector(
                  onTap: () {
                    _scrollController.animateTo(0.0,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut);
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImagePaths.home),
                      ),
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
