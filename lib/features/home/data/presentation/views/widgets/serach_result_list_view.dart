import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/data/presentation/views/widgets/best_saler_list_view_item.dart';

class SerachResultListView extends StatelessWidget {
  const SerachResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
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