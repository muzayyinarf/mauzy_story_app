import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    this.onPressed,
    required this.label,
  });
  final void Function()? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            disabledBackgroundColor: blueDisableColor,
            backgroundColor: blueEnabledColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: onPressed,
        child: Text(
          label,
          style: whiteTextStyle.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
