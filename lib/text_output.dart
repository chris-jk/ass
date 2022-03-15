import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String text;

  const TextOutput(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 30,
      ),
    );
  }
}
