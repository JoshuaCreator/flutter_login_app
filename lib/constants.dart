// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'home_page.dart';

class Button extends StatelessWidget {
  String buttonText;
  Color? colour;
  Color? textColour;
  Border? myBorder;
  Function() onTap;
  Button({
    Key? key,
    required this.buttonText,
    required this.onTap,
    this.colour,
    this.textColour,
    this.myBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Text Controllers
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: colour,
            border: myBorder,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                color: textColour,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextFields extends StatefulWidget {
  const TextFields({super.key});

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

  bool _obscureText = true;

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
            obscureText: _obscureText,
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black,
                ),
              ),
              border: InputBorder.none,
              hintText: 'Username',
            ),
          ),
        ),
      ),
    );
  }
}
