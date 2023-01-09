import 'package:flutter/material.dart';
import 'package:login/Widgets/button.dart';
import 'package:login/views/home_page.dart';
import 'package:login/views/login_page.dart';

import '../Widgets/text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                'Register',
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 70),

              //Username Text Field
              TextFields(
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 10),

              //Email Text Field
              TextFields(
                hintText: 'Email',
                obscureText: false,
              ),

              //Password Text Field
              const SizedBox(height: 10),
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

              const SizedBox(height: 10),

              //Confirm Password Text Field
              const SizedBox(height: 10),
              TextFields(
                hintText: 'Confirm password',
                obscureText: true,
              ),

              const SizedBox(height: 25),

              //Register Button
              Button(
                buttonText: "Register",
                colour: Colors.green[400],
                myBorder: Border.all(color: Colors.white),
                textColour: Colors.white,
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

              //Login Button
              Button(
                buttonText: "I already have an account",
                colour: Colors.grey[300],
                myBorder: Border.all(
                  color: Colors.grey.shade400,
                ),
                textColour: Colors.grey,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginPage();
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
