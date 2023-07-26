import 'package:ebook/screens/botom_navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'E-Book App',
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
