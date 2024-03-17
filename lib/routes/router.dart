import 'package:mauzy_story_app/core.dart';
import 'package:mauzy_story_app/presentation/pages/add_location_page.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  errorBuilder: (context, state) => const ErrorPage(),
  redirect: (context, state) async {
    final loginInfo = await LoginInfoPreference().getLoginInfo();
    final isLoggedIn = loginInfo != null;

    final currentPath = state.fullPath;
    bool isSpecialPath = currentPath == '/register';

    if (isLoggedIn) {
      return null;
    }
    if (isSpecialPath) {
      return null;
    }
    return '/login';
  },
  routes: [
    GoRoute(
      path: '/',
      name: Routes.stories,
      builder: (context, state) {
        return const StoriesPage();
      },
      routes: [
        GoRoute(
          path: 'stories/:id',
          name: Routes.detailStory,
          builder: (context, state) => DetailStoryPage(
            id: state.pathParameters['id'].toString(),
          ),
        ),
        GoRoute(
            path: 'addStory',
            name: Routes.addStory,
            builder: (context, state) => const AddStoryPage(),
            routes: [
              GoRoute(
                path: 'camera',
                name: Routes.camera,
                builder: (context, state) =>
                    CameraPage(cameras: state.extra as List<CameraDescription>),
              ),
              GoRoute(
                path: 'addLocation',
                name: Routes.addLocation,
                builder: (context, state) => const AddLocationPage(),
              ),
            ]),
        GoRoute(
          path: 'profile',
          name: Routes.profile,
          builder: (context, state) => const ProfilePage(),
        ),
      ],
    ),
    GoRoute(
      path: '/register',
      name: Routes.register,
      builder: (context, state) {
        return const RegisterPage();
      },
    ),
    GoRoute(
      path: '/login',
      name: Routes.login,
      builder: (context, state) {
        return const LoginPage();
      },
    ),
  ],
);
