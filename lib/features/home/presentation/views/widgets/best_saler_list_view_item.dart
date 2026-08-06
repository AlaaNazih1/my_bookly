import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/constant.dart';
import 'package:my_bookly/core/utils/app_router.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_book_item.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookItem(
              imageUrl:
                  bookModel.volumeInfo.imageLinks?.thumbnail ?? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCmbaowVUkDY7hFdcvqTojzzA2sDXUn911p_MqhEMCryVTCYcWMG1jFS4&s',
            ),

            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kFontFamily,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                   Text(bookModel.volumeInfo.authors![0], style: Styles.textStyle14),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRating(
                        rating: bookModel.volumeInfo.averageRating?.toDouble() ?? 4.8,
                         count: bookModel.volumeInfo.ratingsCount ?? 2390),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
