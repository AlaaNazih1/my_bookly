import 'package:flutter/material.dart';
import 'package:my_bookly/constant.dart';
import 'package:my_bookly/core/utils/assets.dart';
import 'package:my_bookly/core/utils/styles.dart';

class BestsalerListViewItem extends StatelessWidget {
  const BestsalerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(AssetsData.test),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.textStyle20.copyWith(fontFamily: kFontFamily),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 3),
             const Text(
                'J.K. Rowling',
                style: Styles.textStyle14,
              ),
              const SizedBox(height: 3),
              Row(
                children:  [
                  Text(
                    '19.99€',
                    style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                  ),
                 
              ])
            ],
          ),
        ],
      ),
    );
  }
}
