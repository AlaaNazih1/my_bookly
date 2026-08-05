import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/BooksDetailsSection.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const CustomDetailsAppBar(),
                const BooksDetailsSection(),
                const Expanded(child: SizedBox(height: 50)),
                const SimilarBookssection(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


