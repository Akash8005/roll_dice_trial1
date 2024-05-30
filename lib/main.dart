import 'package:flutter/material.dart';
import 'package:roll_dice_trial1/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.black, Colors.white),
      ),
    ),
  );
}
