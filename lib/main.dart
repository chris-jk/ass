// 1) [x] Create a new flutter App (in this project) and output AppBar and some text.
// below it.
// 2) [] Add a button that changes the text (to any other text of your choice).
// 3) [] Split the app into three widgets: App, textControl & Text.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final _text = 'Hello World';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Changer 1.0'),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Text(
                  _text,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                ElevatedButton(onPressed: null, child: Text('Change Text'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
