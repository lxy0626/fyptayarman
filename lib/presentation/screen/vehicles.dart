import 'package:flutter/material.dart';
import 'package:fyptayarman/presentation/screen/add_vehicle.dart';
import 'package:fyptayarman/presentation/screen/scaffold.dart';
import 'package:fyptayarman/presentation/widget/action_button.dart';
import 'package:fyptayarman/presentation/widget/vehicle_card.dart';

class VehicleListScreen extends StatelessWidget {
  const VehicleListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: "Vehicle List",
      child: SizedBox(
        height:
            MediaQuery.of(context).size.height - 100, // leave space for button
        child: Stack(
          children: [
            // Scrollable list
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Column(
                  children: const [
                    VehicleListCard(
                      vehicleName: "Toyota Vios 2022 (Blue)",
                      plateNumber: "VVV 1111",
                      imagePath: 'assets/vios.png',
                    ),
                  ],
                ),
              ),
            ),
            // Floating bottom button
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: BottomButton(
            //     text: "Add Vehicle",
            //     onTap: () => print("Add Vehicle tapped"),
            //   ),
            // ),
            BottomButton(
              text: "Add Vehicle",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddVehicleScreen(),
                  ),
                );
              }, // your function
            ),
          ],
        ),
      ),
    );
  }
}
