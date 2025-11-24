import 'package:flutter/material.dart';

class BankCardTile extends StatelessWidget {
  final String title;        // top text
  final String subtitle;     // bottom text
  final String? imagePath;   // optional image
  final VoidCallback? onDeleteConfirmed; // callback after delete confirmed

  const BankCardTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.imagePath,
    this.onDeleteConfirmed,
  });

  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete Card"),
          content: const Text("Are you sure you want to delete this card?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                if (onDeleteConfirmed != null) onDeleteConfirmed!();
              },
              child: const Text(
                "Delete",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TOP ROW
          Row(
            children: [
              // IMAGE
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey[300],
                  alignment: Alignment.center,
                  child: imagePath != null
                      ? Image.asset(
                          imagePath!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        )
                      : const Icon(Icons.image, size: 30, color: Colors.white),
                ),
              ),

              const SizedBox(width: 12),

              // TITLE
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),

              // BUTTON (DELETE)
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () => _showDeleteDialog(context),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // BOTTOM TEXT
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF797979),
            ),
          ),
        ],
      ),
    );
  }
}
