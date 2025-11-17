import 'package:flutter/material.dart';

class InputFieldWithDropdown extends StatefulWidget {
  final String title;
  final String hintText;
  final List<String> options;
  final ValueChanged<String?>? onChanged;

  const InputFieldWithDropdown({
    super.key,
    required this.title,
    this.hintText = '',
    required this.options,
    this.onChanged,
  });

  @override
  State<InputFieldWithDropdown> createState() => _InputFieldWithDropdownState();
}

class _InputFieldWithDropdownState extends State<InputFieldWithDropdown> {
  String? selectedValue; // 👈 starts as null for empty default

  List<String> get _orderedOptions {
    // If selectedValue is null, keep the list as-is
    if (selectedValue == null) return widget.options;
    List<String> list = List.from(widget.options);
    list.remove(selectedValue);
    list.insert(0, selectedValue!);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFF666666),
          ),
        ),
        const SizedBox(height: 6),
        Container(
          width: 343,
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Text(widget.hintText.isEmpty ? "Select an option" : widget.hintText), // 👈 placeholder
              value: selectedValue,
              isExpanded: true,
              icon: const Icon(Icons.arrow_drop_down),
              items: _orderedOptions
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  selectedValue = val;
                });
                if (widget.onChanged != null) widget.onChanged!(val);
              },
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
