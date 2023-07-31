import 'package:ebook/themes.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  static const nameRoute = '/bookDetail';
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)?.settings.arguments as Map;
    Widget header() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 50,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.chevron_left_rounded,
                size: 30,
              ),
            ),
            Text(
              'Book Details',
              style: semiBoldText14.copyWith(
                color: blackColor,
              ),
            ),
            const Icon(Icons.share_outlined),
          ],
        ),
      );
    }

    Widget bookImage() {
      return Hero(
        tag: data['imageUrl'],
        child: Container(
          height: 267,
          width: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                data['imageUrl'],
              ),
            ),
          ),
        ),
      );
    }

    Widget infoDecription() {
      return Container(
        height: 60,
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: greyColorInfo,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Rating',
                  style: mediumText10.copyWith(color: dividerColor),
                ),
                Text(
                  '4.8',
                  style: semiBoldText12.copyWith(color: blackColor2),
                ),
              ],
            ),
            VerticalDivider(
              color: dividerColor,
              thickness: 1,
            ),
            Column(
              children: [
                Text(
                  'Number of pages',
                  style: mediumText10.copyWith(color: dividerColor),
                ),
                Text(
                  '180 Pages',
                  style: semiBoldText12.copyWith(color: blackColor2),
                ),
              ],
            ),
            VerticalDivider(
              color: dividerColor,
              thickness: 1,
            ),
            Column(
              children: [
                Text(
                  'Language',
                  style: mediumText10.copyWith(color: dividerColor),
                ),
                Text(
                  'English',
                  style: semiBoldText12.copyWith(color: blackColor2),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget bookmarksButton() {
      return Positioned(
        top: 400,
        right: 30,
        child: Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(color: greenColor, shape: BoxShape.circle),
          child: Image.asset('assets/icons/icon-bookmarks.png'),
        ),
      );
    }

    Widget bottomReadNow() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        height: 50,
        width: double.infinity,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: greenColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            'Read Now',
            style: semiBoldText20.copyWith(
              color: whiteColor,
            ),
          ),
        ),
      );
    }

    Widget description() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['title'],
                        style: semiBoldText20.copyWith(
                          color: blackColor2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        data['writers'],
                        style: mediumText14.copyWith(
                          color: greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'Free Access',
                  style: mediumText14.copyWith(
                    color: greenColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Descriptions',
              style: semiBoldText20.copyWith(
                color: blackColor2,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Enchantment, as defined by best selling business guru Guy Kawasaki, is not about manipulating people. It trasnforms situatuion and relatioonship.',
              style: regularText12.copyWith(
                color: greyColor,
              ),
            ),
            infoDecription(),
            bottomReadNow(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  header(),
                  bookImage(),
                  description(),
                ],
              ),
              bookmarksButton(),
            ],
          ),
        ],
      ),
    );
  }
}
