import 'package:flutter/material.dart';

class ListItemTile extends StatelessWidget {
  final Widget icon;
  final String title;
  final VoidCallback? onTap;
  final bool isConditionMet;

  const ListItemTile({
    super.key,
    required this.icon,
    required this.title,
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
            icon,
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            if (isConditionMet)
              const Icon(
                Icons.check_circle,
                color: Colors.green,
              ),
            const SizedBox(width: 8),
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
