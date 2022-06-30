import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String? title;
  final Function()? onPressed;

  const CustomTextButton({Key? key, this.onPressed, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(title!),
    );
  }
}
