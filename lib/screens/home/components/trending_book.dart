// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ebook/screens/home/pages/book_detail.dart';
import 'package:flutter/material.dart';

import 'package:ebook/models/book.dart';
import 'package:ebook/themes.dart';

class TrendingBook extends StatelessWidget {
  const TrendingBook({
    Key? key,
    required this.info,
  }) : super(key: key);

  final Booklist info;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, BookDetail.nameRoute, arguments: {
              'imageUrl': info.imageUrl,
              'writers': info.writers,
              'title': info.title,
            });
          },
          child: Hero(
            tag: info.imageUrl,
            child: Container(
              height: 160,
              width: 110,
              margin: const EdgeInsets.only(
                top: 12,
                right: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    info.imageUrl,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          info.writers,
          style: mediumText12.copyWith(color: greyColor),
        ),
        const SizedBox(height: 8),
        Text(
          info.title,
          style: semiBoldText14.copyWith(color: blackColor),
        ),
      ],
    );
  }
}
