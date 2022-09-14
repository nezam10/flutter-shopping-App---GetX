import 'package:flutter/material.dart';

class SpIcon extends StatelessWidget {
  final String assetName;
  final int? index;
  final int? currentIndex;
  SpIcon({super.key, required this.assetName, this.index, this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/icons/$assetName",
      height: 25,
      width: 25,
      color: index == currentIndex ? Colors.red : Colors.black,
    );
  }
}
