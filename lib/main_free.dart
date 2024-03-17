import 'dart:async';
import 'package:flutter/material.dart';

import 'core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final apiService = ApiService();
  final prefs = LoginInfoPreference();

  FlavorConfig();

  initializeDateFormatting().then((_) {
    runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => LocalizationBloc()),
          BlocProvider(create: (context) => AuthBloc(apiService, prefs)),
          BlocProvider(create: (context) => ListStoryBloc(apiService, prefs)),
          BlocProvider(create: (context) => DetailStoryBloc(apiService, prefs)),
          BlocProvider(create: (context) => AddStoryBloc(apiService)),
          BlocProvider(create: (context) => UploadBloc(apiService)),
          BlocProvider(create: (context) => AddLocationBloc()),
        ],
        child: const App(),
      ),
    );
  });
}
