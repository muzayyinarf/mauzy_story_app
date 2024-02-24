import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

extension RelativeTimeExtension on DateTime {
  String toRelativeTime(BuildContext context) {
    final now = DateTime.now().toLocal();
    final difference = now.difference(this);
    final AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    if (difference.inSeconds < 60) {
      return appLocalizations.timeSecond(difference.inSeconds);
    } else if (difference.inMinutes < 60) {
      return appLocalizations.timeMinute(difference.inMinutes);
    } else if (difference.inHours < 24) {
      return appLocalizations.timeHour(difference.inHours);
    } else if (difference.inDays < 7) {
      return appLocalizations.timeDay(difference.inDays);
    } else if (year == now.year) {
      return DateFormat('d MMMM', appLocalizations.localeName).format(this);
    } else {
      return DateFormat('d MMMM y', appLocalizations.localeName).format(this);
    }
  }
}
