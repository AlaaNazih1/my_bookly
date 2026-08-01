import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/data/presentation/views/widgets/best_saler_list_view_item.dart';
import 'package:my_bookly/features/home/data/presentation/views/widgets/custom_app_bar.dart';
import 'package:my_bookly/features/home/data/presentation/views/widgets/featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(height: 50),
      
          const FeatuedBooksListView(),
          const SizedBox(height: 50),
          Text('Best Seller', style:Styles.titleMedium),
          const BestsalerListViewItem(),
        ],
      ),
    );
  }
}

