import 'package:flutter/material.dart';
import 'package:fyptayarman/presentation/screen/scaffold.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'Profile',
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 18),
      ),
    );
  }
}