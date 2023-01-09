// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  String hintText;
  Widget? suffixIcon;
  bool obscureText;
  TextFields({
    Key? key,
    required this.hintText,
    this.suffixIcon,
    required this.obscureText,
  }) : super(key: key);

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextField(
            controller: _passwordController,
            obscureText: widget.obscureText,
            decoration: InputDecoration(
              suffixIcon: widget.suffixIcon,
              border: InputBorder.none,
              hintText: widget.hintText,
            ),
          ),
        ),
      ),
    );
  }
}
