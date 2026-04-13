import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resturant App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFEFEFE),
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
    );
  }
}
