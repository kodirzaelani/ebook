import 'package:ebook/themes.dart';
import 'package:flutter/material.dart';

class BookmarksPage extends StatelessWidget {
  const BookmarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Bookmarks Page',
          style: semiBoldText20,
        ),
      ),
    );
  }
}
