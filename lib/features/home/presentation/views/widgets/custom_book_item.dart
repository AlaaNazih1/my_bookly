import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AssetsData.test),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
