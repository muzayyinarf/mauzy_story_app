import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({super.key, required this.text, this.onPressed});

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(text, style: blueTextStyle),
    );
  }
}
