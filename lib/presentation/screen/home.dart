import 'package:flutter/material.dart';
import 'package:fyptayarman/presentation/widget/Navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Home Screen",
          style: TextStyle(fontSize: 22),
        ),
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
