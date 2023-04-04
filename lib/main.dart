import 'package:flutter/material.dart';
import 'first_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Page Navigation Demo",
      home: FirstPage(data: 'First Page'),
    );
  }
}
