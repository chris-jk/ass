import 'package:flutter/material.dart';
import 'text_output.dart';

class TextController extends StatelessWidget {
  final String text;

  const TextController(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextOutput(text);
  }
}
