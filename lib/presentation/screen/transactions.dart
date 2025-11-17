import 'package:flutter/material.dart';
import 'package:fyptayarman/presentation/screen/scaffold.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

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