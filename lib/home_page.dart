import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          '❤️🥳😁Welcome to my app😁🥳❤️',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
