import 'dart:ui';

import 'package:flutter/material.dart';

class Calculatrice extends StatelessWidget {
  const Calculatrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  SizedBox(
                    width: double.minPositive,
                    height: 70,
                  ),
                  SizedBox(
                    width: double.minPositive,
                    height: 70,
                  ),
                ],
              ),
              const SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createButton("AC", Colors.white, Colors.blue),
                  createButton("+/-", Colors.white, Colors.blue),
                  createButton("%", Colors.white, Colors.blue),
                  createButton("<-", Colors.white, Colors.blue),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createButton("7", Colors.white, Colors.blue),
                  createButton("8", Colors.white, Colors.blue),
                  createButton("9", Colors.white, Colors.blue),
                  createButton("*", Colors.white, Colors.blue),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createButton("4", Colors.white, Colors.blue),
                  createButton("5", Colors.white, Colors.blue),
                  createButton("6", Colors.white, Colors.blue),
                  createButton("-", Colors.white, Colors.blue),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createButton("1", Colors.white, Colors.blue),
                  createButton("2", Colors.white, Colors.blue),
                  createButton("3", Colors.white, Colors.blue),
                  createButton("+", Colors.white, Colors.blue),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createButton("0", Colors.white, Colors.blue),
                  createButton(",", Colors.white, Colors.blue),
                  createButton("=", Colors.white, Colors.blue),
                  createButton("/", Colors.white, Colors.blue),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton createButton(String chiffre, Color color, Color bgColor) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
      ),
      child: Text(chiffre, style: TextStyle(color: color, fontSize: 25)),
    );
  }
}
