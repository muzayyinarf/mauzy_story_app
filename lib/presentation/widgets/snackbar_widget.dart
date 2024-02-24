import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar(
    BuildContext context, String title) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(milliseconds: 700),
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 60),
      content: Center(
        child: Text(
          title,
          style: whiteTextStyle,
        ),
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      backgroundColor: blueEnabledColor.withOpacity(0.5),
    ),
  );
}
