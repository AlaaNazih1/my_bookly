import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/serach_result_list_view.dart';
import 'package:my_bookly/features/search/data/presentation/views/widgets/custom_text_filed.dart';

class SerachViewBody extends StatelessWidget {
  const SerachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: const CustomTextField(),
        ),
        const SizedBox(height: 16),
        Text('Search Result',style: Styles.textStyle18,),
        const SizedBox(height: 16),
        Expanded(child: const SerachResultListView()),
      ],
    );
  }
}

