import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final Function onChanged;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String label;
  final bool autofocus;
  final Icon icon;
  final bool isPrefix;
  final TextEditingController controller;

  TextInputWidget(
      {required this.onChanged,
      required this.keyboardType,
      required this.textInputAction,
      required this.label,
      required this.icon,
      this.isPrefix = false,
      this.autofocus = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      showCursor: true,
      autofocus: autofocus,
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1)),
          prefixIcon: icon,
          labelText: label,
          labelStyle: TextStyle(color: Colors.white)),
    );
  }
}
