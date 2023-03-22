import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBordingPage extends StatelessWidget {
  const OnBordingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text(
            "Go To Home",
          ),
          onPressed: () {
            context.go('/home');
          },
        ),
      ),
    );
  }
}
