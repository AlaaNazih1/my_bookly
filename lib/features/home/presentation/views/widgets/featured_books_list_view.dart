import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/core/widgets/custom_error_widget.dart';
import 'package:my_bookly/core/widgets/custom_loading_indicator.dart';
import 'package:my_bookly/features/home/presentation/manager/featured_cubit/featured_cubit_cubit.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_book_item.dart';

class FeatuedBooksListView extends StatelessWidget {
  const FeatuedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedCubitCubit, FeaturedCubitState>(
      builder: (context,state) {
        if(state is FeaturedCubitSuccess){
           return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.featuredBooks.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child:  CustomBookItem(
                    imageUrl: state.featuredBooks[index].volumeInfo.imageLinks?.thumbnail ?? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCmbaowVUkDY7hFdcvqTojzzA2sDXUn911p_MqhEMCryVTCYcWMG1jFS4&s',
                  ),
                );
              },
            ),
          );
        }
        else if(state is FeaturedCubitFailure){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }
        else{
          return const Center(child: CustomLoadingIndicator());
        }
       
      }
    );
  }
}
