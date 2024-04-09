import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      context.go('/');
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              height: 200,
              child: const Image(
              image: ExactAssetImage('lib/images/sample_logo.jpg')),
          ),
        ),
      ),
    );
  }
}