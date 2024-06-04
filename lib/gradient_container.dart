import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF27085D), Color.fromARGB(255, 93, 9, 237)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              style: TextStyle(color: Colors.white, fontSize: 28),
              'Hello World!',
            ),
            Text(
              style: TextStyle(color: Colors.white, fontSize: 28),
              'It\'s time to learn Flutter!',
            ),
          ],
        ),
      ),
    );
  }
}
