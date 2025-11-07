import 'package:flutter/material.dart';
import 'package:fyptayarman/presentation/widget/icon_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Home Screen",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 24),
            IconGridWidget(),
          ],
        ),
      ),
    );
  }
}
