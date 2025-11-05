import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black12,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons.home, size: 30, color: Colors.grey),
          Icon(Icons.search, size: 30, color: Colors.grey),
          Icon(Icons.favorite, size: 30, color: Colors.grey),
          Icon(Icons.person, size: 30, color: Colors.grey),
        ],
      ),
    );
  }
}
