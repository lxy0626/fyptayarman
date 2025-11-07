import 'package:flutter/material.dart';

class IconGridWidget extends StatelessWidget {
  const IconGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> services = [
      {'icon': 'assets/roentgen_tyre.png', 'label': 'Tyre Service'},
      {'icon': 'assets/jump-start-icon.png', 'label': 'Jump Start'},
      {'icon': 'assets/solar_fuel-bold.png', 'label': 'Fuel Delivery'},
      {'icon': 'assets/mdi_tow-truck.png', 'label': 'Towing'},
      {'icon': 'assets/mingcute_unlock-fill.png', 'label': 'Unlock Vehicle'},
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 👇 Title outside the box
          const Text(
            'Services',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          // 👇 The shadowed box
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.9,
              ),
              itemCount: services.length,
              itemBuilder: (context, index) {
                final service = services[index];
                final iconPath = service['icon']!;
                final label = service['label']!;

                return GestureDetector(
                  onTap: () {
                    debugPrint('Tapped: $label');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(iconPath, width: 48, height: 48),
                      const SizedBox(height: 8),
                      Text(
                        label,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
