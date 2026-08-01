import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/data/presentation/views/widgets/custom_app_bar.dart';
import 'package:my_bookly/features/home/data/presentation/views/widgets/custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        const SizedBox(height: 50),

        const CustomListViewItem(),
      ],
    );
  }
}

