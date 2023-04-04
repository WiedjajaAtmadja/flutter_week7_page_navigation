import 'package:flutter/material.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'third_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Page Navigation Demo",
      // home: FirstPage(data: 'First Page'),
      initialRoute: 'first',
      routes: {
        'first': (context) => const FirstPage(data: 'First Page'),
        'second': (context) => const SecondPage(data: 'Second Page'),
        'third': (context) => const ThirdPage(data: 'Third Page'),
      },
    );
  }
}
