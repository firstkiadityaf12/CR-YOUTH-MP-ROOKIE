import 'package:flutter/material.dart';

class TextfieldWidget extends StatefulWidget {
  TextEditingController controller;
  String hintText;
  TextInputType keyboardType;
  Icon suffixIcon;
  bool obscureText;
  TextfieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    required this.suffixIcon,
    required this.obscureText,
  });

  @override
  State<TextfieldWidget> createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  bool _isObscure = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        hintText: widget.hintText,
        suffixIcon: widget.suffixIcon,
        suffixIconColor: Colors.grey,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
