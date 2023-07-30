import 'package:ebook/screens/botom_navbar.dart';
import 'package:ebook/screens/home/home_page.dart';
import 'package:ebook/screens/home/pages/book_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Book App',
      debugShowCheckedModeBanner: false,
      // home: const BottomNavBar(),
      routes: {
        BottomNavBar.nameRoute: (context) => const BottomNavBar(),
        HomePage.nameRoute: (context) => const HomePage(),
        BookDetail.nameRoute: (context) => const BookDetail(),
      },
    );
  }
}
