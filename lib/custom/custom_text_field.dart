import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? title;
  final String? message;
  final Function(String?)? onSaved;
  final TextEditingController? controller;
  final bool? obscure;
  final int? maxLength;
  final IconData? icon;
  final Widget? suffixIcon;

  const CustomTextField(
      {Key? key,
      this.title,
      this.message,
      this.onSaved,
      this.controller,
      this.obscure,
      this.maxLength,
      this.icon,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
          style: TextStyle(color: Colors.black, fontSize: 18),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.emailAddress,
          controller: controller,
          obscureText: obscure!,
          maxLength: maxLength,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
            suffixIcon: suffixIcon,
            prefixIcon: Icon(
              icon,
              color: Colors.grey[650],
              size: 20,
            ),
            floatingLabelAlignment: FloatingLabelAlignment.center,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: title,
            labelStyle: TextStyle(
                letterSpacing: 1.2,
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
          validator: (String? value) {
            if (value!.isEmpty) {
              return (message);
            }
            return null;
          },
          onSaved: onSaved),
    );
  }
}
