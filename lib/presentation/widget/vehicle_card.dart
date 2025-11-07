import 'package:flutter/material.dart';

class VehicleListCard extends StatelessWidget {
  final String vehicleName; // e.g., "Toyota Camry"
  final String plateNumber; // e.g., "ABC 1234"
  final String? imagePath; // optional vehicle image
  final VoidCallback? onTap; // optional tap callback
  final VoidCallback? onEdit; // optional edit button
  final VoidCallback? onDelete; // optional delete button

  const VehicleListCard({
    super.key,
    required this.vehicleName,
    required this.plateNumber,
    this.imagePath,
    this.onTap,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
        child: Row(
          children: [
            // Vehicle image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: 60,
                height: 60,
                color: Colors.grey[300],
                alignment: Alignment.center, // center the image
                child:
                    imagePath != null
                        ? Image.asset(
                          imagePath!,
                          width: 60,
                          height: 60,
                          fit:
                              BoxFit.cover, // maintains aspect ratio, fills container
                        )
                        : const Icon(
                          Icons.directions_car,
                          color: Colors.white,
                          size: 32,
                        ),
              ),
            ),
            const SizedBox(width: 12),
            // Vehicle info (name on top, plate below)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    vehicleName,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF797979),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    plateNumber,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            // Optional actions (edit/delete)
            if (onEdit != null || onDelete != null)
              Row(
                children: [
                  if (onEdit != null)
                    IconButton(
                      onPressed: onEdit,
                      icon: const Icon(Icons.edit, color: Colors.blue),
                    ),
                  if (onDelete != null)
                    IconButton(
                      onPressed: onDelete,
                      icon: const Icon(Icons.delete, color: Colors.red),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
