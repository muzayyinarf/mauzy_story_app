import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationBloc, LocalizationState>(
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          locale: context.read<LocalizationBloc>().state.locale,
          title: 'Mauzy Story App',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              primaryColor: Colors.blue,
              progressIndicatorTheme:
                  ProgressIndicatorThemeData(color: blueEnabledColor),
              textSelectionTheme: TextSelectionThemeData(
                cursorColor: Colors.blue,
                selectionColor: Colors.blue.shade100,
                selectionHandleColor: Colors.blue,
              )),
          routerConfig: router,
        );
      },
    );
  }
}
