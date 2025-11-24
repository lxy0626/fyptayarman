import 'package:flutter/material.dart';
import 'package:fyptayarman/presentation/screen/scaffold.dart';

class BankCardScreen extends StatelessWidget {
  const BankCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'Bank Card',
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 18),
      ),
    );
  }
}