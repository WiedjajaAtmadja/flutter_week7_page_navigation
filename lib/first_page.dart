import 'package:flutter/material.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
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
                      Navigator.pushNamed(context, "second");
                    }),
                ElevatedButton(
                    child: const Text("Third page"),
                    onPressed: () {
                      Navigator.pushNamed(context, "third");
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
