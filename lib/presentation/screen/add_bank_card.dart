import 'package:flutter/material.dart';
import 'package:fyptayarman/presentation/screen/scaffold.dart';

class AddBankCardScreen extends StatelessWidget {
  const AddBankCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'Transaction',
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 18),
      ),
    );
  }
}