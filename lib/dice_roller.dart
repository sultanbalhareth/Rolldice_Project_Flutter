import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// underscore (_) means this class is private (Can't be accessed by other device)
class _DiceRollerState extends State<DiceRoller> {
  var imagee = "assets/images/dice-2.png";
  void rollDice() {
    setState(() {
      var diceRoll = randomizer.nextInt(6) + 1;
      imagee = "assets/images/dice-" + diceRoll.toString() + ".png";
    });
    // print("image changed!");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagee,
          width: 200,
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: rollDice,
          child: Text("Click Me!"),
          style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              padding: const EdgeInsets.all(10),
              textStyle: const TextStyle(
                fontSize: 28,
              )),
        )
      ],
    );
  }
}
