import 'dart:math';

import 'package:dice_flutter/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatefulWidget {
  GradientContainer({
    super.key,
    this.colors,
  });

  final List<Color>? colors;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  int diceNumber = 1;

  void rollDice() {
    // function body
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colors!,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$diceNumber.png',
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  rollDice();
                },
                child: const Text(
                  'Roll Dice !',
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ))
          ],
        ),
      ),
    );
  }
}
