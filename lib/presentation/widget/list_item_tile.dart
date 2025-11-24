import 'package:flutter/material.dart';

class ListItemTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color? imageColor;       // <-- optional color
  final VoidCallback? onTap;
  final bool isConditionMet;

  const ListItemTile({
    super.key,
    required this.imagePath,
    required this.title,
    this.imageColor,            // <-- allow user to pass color
    this.onTap,
    this.isConditionMet = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 24,
              height: 24,
              fit: BoxFit.contain,
              color: imageColor,      // <-- applies tint
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF666666),   // <-- always same color
                ),
              ),
            ),

            if (isConditionMet)
              const Icon(Icons.check_circle, size: 16,color: Color(0xFF11DC4E)),

            const SizedBox(width: 8),

            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
