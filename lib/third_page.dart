import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
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
                      Navigator.pushNamed(context, 'first');
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
