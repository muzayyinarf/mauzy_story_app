import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

class FlagIconWidget extends StatelessWidget {
  const FlagIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
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
    );
  }
}
