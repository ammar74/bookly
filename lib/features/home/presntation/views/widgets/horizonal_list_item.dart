import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HorizontaListItem extends StatelessWidget {
  const HorizontaListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
          decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsData.testImage),
        ),
        borderRadius: BorderRadius.circular(12),
      )),
    );
  }
}
