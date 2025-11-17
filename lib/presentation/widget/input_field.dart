import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController? controller;

  const InputField({
    super.key,
    required this.title,
    this.hintText = '',
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // title aligns left
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF666666),
          ),
        ),
        const SizedBox(height: 8), // spacing between title and field
        SizedBox(
          width: 343,
          height: 50,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25), // rounded border
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(
                  color: Color(0xFF2196F3), // 👈 blue focus color
                  width: 1.5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
