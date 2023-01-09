import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/Widgets/button.dart';
import 'package:login/views/home_page.dart';
import 'package:login/views/signup_page.dart';

import '../Widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//Text Controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 70),

              //Email Text Field
              TextFields(
                hintText: 'Email',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              //Password Text Field
              TextFields(
                hintText: 'Password',
                obscureText: obscureText,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: Icon(
                    obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              //Signin Button
              Button(
                buttonText: "Log in",
                colour: Colors.green[400],
                textColour: Colors.white,
                myBorder: Border.all(color: Colors.white),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const HomePage();
                      },
                    ),
                  );
                },
              ),
              const SizedBox(height: 15),

              //Register Button
              Button(
                buttonText: "I don't have an account",
                colour: Colors.grey[300],
                myBorder: Border.all(
                  color: Colors.grey.shade400,
                ),
                textColour: Colors.grey,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const SignUpPage();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
