import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final icons = [
      "assets/ic_round-home.png",
      "assets/fa7-solid_car-side.png",
      "assets/icon-park-solid_transaction.png",
      "assets/iconamoon_profile-fill.png",
    ];

    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black12,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(icons.length, (index) {
          final isSelected = index == currentIndex;
          return GestureDetector(
            onTap: () => onTap(index),
            child: Image.asset(
              icons[index],
              width: 28,
              color: isSelected ? Color(0xFF0D2BEF) : Colors.black,
            ),
          );
        }),
      ),
    );
  }
}
