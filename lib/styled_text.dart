import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  String text = '';
  StyledText(text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      style: const TextStyle(color: Colors.white, fontSize: 28),
      text,
    );
  }
}
