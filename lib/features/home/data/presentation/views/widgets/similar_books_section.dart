import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/data/presentation/views/widgets/SimilarBooksListView.dart';

class SimilarBookssection extends StatelessWidget {
  const SimilarBookssection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You can also like', style: Styles.textStyle14),
        const SizedBox(height: 16),
        const SimilarBooksListView(),
      ],
    );
  }
}
