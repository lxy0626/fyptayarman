import 'package:flutter/material.dart';
import 'package:fyptayarman/presentation/screen/home.dart';
import 'package:fyptayarman/presentation/screen/profile.dart';
import 'package:fyptayarman/presentation/screen/transactions.dart';
import 'package:fyptayarman/presentation/screen/vehicles.dart';
import 'package:fyptayarman/presentation/widget/Navbar.dart';
// import 'home_screen.dart';
// import 'services_screen.dart';
// import 'profile_screen.dart';

class MainNavController extends StatefulWidget {
  const MainNavController({super.key});

  @override
  State<MainNavController> createState() => _MainNavControllerState();
}

class _MainNavControllerState extends State<MainNavController> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    VehicleListScreen(),
    TransactionScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavWidget(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
