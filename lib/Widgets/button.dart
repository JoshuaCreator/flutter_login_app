// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


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

