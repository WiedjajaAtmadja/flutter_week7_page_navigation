import 'package:flutter/material.dart';
import 'package:flutter_week7_page_navigation/first_page.dart';

class ThirdPage extends StatelessWidget {
  static const id = "ThirdPage";
  final String data;
  const ThirdPage({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data),
      ),
      body: Center(
        child: Column(
          children: [
            Text(data),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    child: const Text("First page"),
                    onPressed: () {
                      // Navigator.pushNamed(context, FirstPage.id);
                      Navigator.pushNamedAndRemoveUntil(
                          context, FirstPage.id, (route) => false);
                    }),
                ElevatedButton(
                    child: const Text("Back"),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
