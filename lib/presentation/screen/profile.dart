import 'package:flutter/material.dart';
import 'package:fyptayarman/presentation/screen/scaffold.dart';
import 'package:fyptayarman/presentation/widget/dynamic_tile_container.dart';
import 'package:fyptayarman/presentation/widget/list_item_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'Profile',
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hello World',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          DynamicTileContainer(
            tiles: [
              ListItemTile(
                icon: const Icon(Icons.car_rental),
                title: 'Vehicle 1',
                isConditionMet: true,
                onTap: () {},
              ),
              ListItemTile(
                icon: const Icon(Icons.car_rental),
                title: 'Vehicle 2',
                isConditionMet: false,
                onTap: () {},
              ),
              ListItemTile(
                icon: const Icon(Icons.car_rental),
                title: 'Vehicle 3',
                isConditionMet: true,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}