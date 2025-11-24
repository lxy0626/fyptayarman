import 'package:flutter/material.dart';
import 'package:fyptayarman/presentation/screen/bank_card.dart';
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
          const SizedBox(height: 20),
          DynamicTileContainer(
            tiles: [
              ListItemTile(
                imagePath: 'assets/ic_baseline-email.png',
                title: 'Verify Email Address',
                isConditionMet: true,
                onTap: () {},
              ),
              ListItemTile(
                imagePath: 'assets/iconamoon_profile-fill.png',
                title: 'Verify Identification',
                imageColor: Color(0xFF666666),
                isConditionMet: true,
                onTap: () {},
              ),
              ListItemTile(
                imagePath: 'assets/solar_card-bold.png',
                title: 'Bank Card',
                isConditionMet: false,
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BankCardScreen(),
                  ),
                );
                },
              ),
              ListItemTile(
                imagePath: 'assets/tabler_fingerprint.png',
                title: 'Security Authentication',
                isConditionMet: true,
                onTap: () {},
              ),
              ListItemTile(
                imagePath: 'assets/tabler_password.png',
                title: 'Change PIN',
                isConditionMet: false,
                onTap: () {},
              ),
              ListItemTile(
                imagePath: 'assets/mingcute_lock-fill.png',
                title: 'Change Password',
                isConditionMet: false,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}