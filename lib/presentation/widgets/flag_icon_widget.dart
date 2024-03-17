import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

class FlagIconWidget extends StatefulWidget {
  const FlagIconWidget({super.key});

  @override
  State<FlagIconWidget> createState() => _FlagIconWidgetState();
}

class _FlagIconWidgetState extends State<FlagIconWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocalizationBloc, LocalizationState>(
      listener: (context, state) async {
        await Future.delayed(
          const Duration(milliseconds: 200),
          () {
            snackBar(
                context, AppLocalizations.of(context)!.successChangeLanguage);
          },
        );
      },
      builder: (context, _) => DropdownButtonHideUnderline(
        child: DropdownButton(
          icon: const Icon(Icons.flag),
          items: AppLocalizations.supportedLocales.map((Locale locale) {
            final flag = Localization.getFlag(locale.languageCode);
            return DropdownMenuItem(
              value: locale,
              child: Center(
                child: Text(
                  flag,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              onTap: () {
                context
                    .read<LocalizationBloc>()
                    .add(LocalizationEvent.setLocale(locale));
              },
            );
          }).toList(),
          onChanged: (_) {},
        ),
      ),
    );
  }
}
