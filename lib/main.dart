// 1) [x] Create a new flutter App (in this project) and output AppBar and some text.
// below it.
// 2) [x] Add a button that changes the text (to any other text of your choice).
// 3) [x] Split the app into three widgets: App, text_controller & text_ouput.

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'text_output.dart';

void main() => runApp(const MyApp());

// App
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

//State

class _MyAppState extends State<MyApp> {
  var textIndex = 0;
  var text = [
    'Hello World!!!',
    'Hello Flutter!!!',
    'Hello... Person?',
    'Hello !!!',
    'Flutter!!!',
  ];

  void changeText() {
    // Forgetting to set state will not change the text.
    setState(() {
      // textIndex = textIndex + 1;
      print(textIndex);
      // Operator modulo is used to get the remainder of a division.
      // keepsit in a loop
      textIndex = (textIndex + 1) % text.length;
    });
    print(textIndex);
  }

//Build Widgets

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Changer 1.0'),
        ),
        body: Center(
          child: Column(
            children: [
              TextOutput(text[textIndex]),
              ElevatedButton(
                  onPressed: () => changeText(),
                  child: const Text('Change Text'))
            ],
          ),
        ),
      ),
    );
  }
}
