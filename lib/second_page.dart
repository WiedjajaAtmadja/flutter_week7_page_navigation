import 'package:flutter/material.dart';
import 'third_page.dart';

class SecondPage extends StatelessWidget {
  static const id = "SecondPage";
  final String data;
  const SecondPage({required this.data, super.key});

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
                  child: const Text("Back"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  child: const Text("Third page"),
                  onPressed: () {
                    Navigator.pushNamed(context, ThirdPage.id);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
