import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar(
    BuildContext context, String title,
    {bool isLoading = false}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(milliseconds: 700),
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 60),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isLoading)
            Flexible(
              flex: 1,
              child: Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(right: 16.0),
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: whiteColor,
                ),
              ),
            ),
          Flexible(
            flex: 1,
            child: Center(
              child: Text(
                title,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: whiteTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: blueEnabledColor.withOpacity(0.9),
    ),
  );
}
