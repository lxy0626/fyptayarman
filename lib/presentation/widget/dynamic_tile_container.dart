import 'package:flutter/material.dart';
import 'list_item_tile.dart';

class DynamicTileContainer extends StatelessWidget {
  final List<ListItemTile> tiles;
  final Color backgroundColor; // Custom background color

  const DynamicTileContainer({
    super.key,
    required this.tiles,
    this.backgroundColor = const Color(0xFFFFFFFF), // default white
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 363,
        decoration: BoxDecoration(
          color: backgroundColor, // Set your hex color here
          border: Border.all(color: Colors.transparent), // transparent border
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(tiles.length, (index) {
            BorderSide borderSide = const BorderSide(color: Colors.grey, width: 0.5);

            // Inner border between tiles
            Border border;
            if (index == 0 && tiles.length == 1) {
              border = Border.all(color: Colors.grey, width: 0.5);
            } else if (index == 0) {
              border = Border(bottom: borderSide);
            } else if (index == tiles.length - 1) {
              border = Border(top: borderSide);
            } else {
              border = Border(top: borderSide, bottom: borderSide);
            }

            return Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              decoration: BoxDecoration(
                border: border,
              ),
              child: tiles[index],
            );
          }),
        ),
      ),
    );
  }
}
