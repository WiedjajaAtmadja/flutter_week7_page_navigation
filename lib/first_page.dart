import 'package:flutter/material.dart';
import 'package:flutter_week7_page_navigation/third_page.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  static const id = "FirstPage";
  final String data;
  const FirstPage({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(data),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    child: const Text("Second page"),
                    onPressed: () {
                      Navigator.pushNamed(context, SecondPage.id);
                    }),
                ElevatedButton(
                    child: const Text("Third page"),
                    onPressed: () {
                      Navigator.pushNamed(context, ThirdPage.id);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
