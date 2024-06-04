import 'package:dice_flutter/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    this.colors,
    required this.imagePath,
  });

  final List<Color>? colors;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors!,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Image.asset(
          imagePath,
          width: 200,
        ),
      ),
    );
  }
}
