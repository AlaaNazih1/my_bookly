import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/core/widgets/custom_error_widget.dart';
import 'package:my_bookly/features/home/presentation/manager/newset_books_cubit/newset_books_cubit_cubit.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/best_saler_list_view_item.dart';

class BestsellerListViewItem extends StatelessWidget {
  const BestsellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubitCubit, NewsetBooksCubitState>(
      builder: (context, state) {
        if (state is NewsetBooksCubitSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BooksListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is NewsetBooksCubitFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
