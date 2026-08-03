import 'package:flutter/material.dart';
import 'package:my_bookly/features/search/data/presentation/views/widgets/custom_text_filed.dart';

class SerachViewBody extends StatelessWidget {
  const SerachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: const CustomTextField(),
        ),
      ],
    );
  }
}

