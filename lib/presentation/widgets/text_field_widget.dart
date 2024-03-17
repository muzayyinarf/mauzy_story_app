import 'package:flutter/material.dart';
import 'package:mauzy_story_app/common/styles.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    super.key,
    this.controller,
    this.obsecureText = false,
    this.hintText,
    this.keyboardType,
    this.height = 55,
    this.maxLines = 1,
    this.suffixIcon,
    this.enabled,
    this.validator,
  });

  final TextEditingController? controller;
  final bool obsecureText;
  final String? hintText;
  final TextInputType? keyboardType;
  final double? height;
  final int? maxLines;
  final Widget? suffixIcon;
  final bool? enabled;
  final String? Function(String?)? validator;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        enabled: widget.enabled,
        keyboardType: widget.keyboardType,
        obscureText: widget.obsecureText,
        cursorColor: blackTextColor,
        autocorrect: false,
        enableSuggestions: false,
        cursorWidth: 1,
        maxLines: widget.maxLines,
        onChanged: (value) {
          setState(() {});
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: backGroundFieldColor,
          hintText: widget.hintText,
          hintStyle: greyTextStyle,
          suffixIcon: widget.suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: enabledBorderColor),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: enabledBorderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: greyTextColor),
          ),
        ),
      ),
    );
  }
}
