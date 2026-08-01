import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/data/presentation/views/widgets/custom_list_view_item.dart';

class FeatuedBooksListView extends StatelessWidget {
  const FeatuedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: const FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
