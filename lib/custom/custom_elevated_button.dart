import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String? label;
  final Function()? onPressed;
  const CustomElevatedButton({Key? key, this.label, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        label!,
        style: TextStyle(fontSize: 23, color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(220, 35),
        primary: Color(0xFFF8670E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
