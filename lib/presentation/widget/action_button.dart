import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;

  const BottomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width = 300,
    this.height = 51,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned(
              bottom: 70, // adjust based on navbar height
              left: (constraints.maxWidth - width) / 2, // center horizontally
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  width: width,
                  height: height,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0D2BEF),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}