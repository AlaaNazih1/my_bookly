import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/best_saler_list_view_item.dart';

class BestsellerListViewItem extends StatelessWidget {
  const BestsellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: const BestsalerListViewItem(),
        );
      },
    );
  }
}
