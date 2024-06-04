import 'dart:math';

import 'package:dice_flutter/dice_roller.dart';
import 'package:dice_flutter/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({
    super.key,
    this.colors,
  });

  final List<Color>? colors;

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
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
