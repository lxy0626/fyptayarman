import 'package:flutter/material.dart';
import 'package:fyptayarman/presentation/screen/scaffold.dart';
import 'package:fyptayarman/presentation/widget/action_button.dart';
import 'package:fyptayarman/presentation/widget/input_field.dart';
import 'package:fyptayarman/presentation/widget/input_field_dropdown.dart';

class AddVehicleScreen extends StatelessWidget {
  const AddVehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return PageScaffold(
      title: 'Add Vehicle',
      child: SizedBox(
        height: screenHeight, // take full screen height
        child: Stack(
          children: [
            // Scrollable form content
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 80), // bottom padding for button
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputFieldWithDropdown(
                    title: "Brand",
                    options: const ["Toyota", "Nissan", "BMW"],
                    hintText: "Select Brand",
                    onChanged: (val) => print("Brand selected: $val"),
                  ),
                  const SizedBox(height: 10),
                  InputFieldWithDropdown(
                    title: "Model",
                    options: const ["Vios", "Altima", "M3"],
                    hintText: "Select Model",
                    onChanged: (val) => print("Model selected: $val"),
                  ),
                  const SizedBox(height: 10),
                  const InputField(title: 'Year'),
                  const SizedBox(height: 10),
                  const InputField(title: 'Color'),
                  const SizedBox(height: 10),
                  const InputField(title: 'Number Plate', hintText: "XXX1234"),
                  const SizedBox(height: 20),
                ],
              ),
            ),

            // Floating bottom button
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomButton(
                text: "Add Current Vehicle",
                onTap: () => print("added current vehicle"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
