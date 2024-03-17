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
          title: FlavorConfig.instance.values.titleApp,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: ThemeData(
              primarySwatch: FlavorConfig.instance.color,
              primaryColor: FlavorConfig.instance.color,
              progressIndicatorTheme:
                  ProgressIndicatorThemeData(color: blueEnabledColor),
              textSelectionTheme: TextSelectionThemeData(
                cursorColor: FlavorConfig.instance.color,
                selectionColor: Colors.blue.shade100,
                selectionHandleColor: FlavorConfig.instance.color,
              )),
          routerConfig: router,
        );
      },
    );
  }
}
