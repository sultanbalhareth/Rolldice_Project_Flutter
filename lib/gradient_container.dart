// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:rolldice/dice_roller.dart';

const topLeft = Alignment.topLeft;
const bottomRight = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.colors,
  });
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: colors, begin: topLeft, end: bottomRight)),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
