import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class DiceRoll extends StatefulWidget {
  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {
  var current = 2;
  void rollDice() {
    setState(() {
      current = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$current.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            "Roll The Dice",
            style:
                TextStyle(color: Color.fromARGB(255, 10, 10, 10), fontSize: 30),
          ),
        )
      ],
    );
  }
}
