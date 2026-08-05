import 'package:flutter/material.dart';
import 'package:my_bookly/features/search/presentation/views/widgets/serach_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SerachViewBody()),
    );
  }
}