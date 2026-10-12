import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/pic$currentDiceRoll.jpg',
          width: 300,
        ),
        //const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: const Color.fromARGB(
              255,
              56,
              45,
              45,
            ),
            textStyle: const TextStyle(
              fontSize: 40,
            ),
          ),
          child: Text("Случайная цитата дня"),
        ),
      ],
    );
  }
}
