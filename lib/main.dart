import 'package:flutter/material.dart';
import 'package:fyptayarman/presentation/nav/main_nav_controller.dart';
// import 'package:fyptayarman/presentation/navigation/main_nav_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainNavController(), // 👈 This must be here
    );
  }
}
