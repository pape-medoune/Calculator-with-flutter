import 'dart:ui';
import 'package:flutter/material.dart';

class Calculatrice extends StatefulWidget {
  const Calculatrice({Key? key}) : super(key: key);

  @override
  _CalculatriceState createState() => _CalculatriceState();
}

@override
class _CalculatriceState extends State<Calculatrice> {
  String displayText = '';
  double result = 0.0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calculatrice",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Card(
          margin: const EdgeInsets.fromLTRB(10, 40, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 391,
                    height: 250,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.bottomRight,
                      color: Colors.black,
                      child: Text(
                        displayText,
                        style:
                            const TextStyle(fontSize: 80, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
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
              const SizedBox(
                height: 20,
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
              const SizedBox(
                height: 20,
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
              const SizedBox(
                height: 20,
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
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createButton("0", Colors.white, Colors.blue),
                  createButton(",", Colors.white, Colors.blue),
                  createButton("=", Colors.white, Colors.blue),
                  createButton("/", Colors.white, Colors.blue),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void handleButtonPress(String buttonText) {
    if (buttonText == '=') {
      try {
        final parsedResult = double.parse(displayText);
        setState(() {
          result = parsedResult;
          displayText = result.toString();
        });
      } catch (e) {
        setState(() {
          displayText = 'Error';
        });
      }
    } else if (buttonText == 'AC') {
      setState(() {
        displayText = '';
        result = 0.0;
      });
    } else {
      setState(() {
        displayText += buttonText;
      });
    }
  }

  ElevatedButton createButton(String chiffre, Color color, Color bgColor) {
    return ElevatedButton(
      onPressed: () {
        handleButtonPress(chiffre);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: const Size(87, 60), // Set the minimum button size
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 15,
        ),
      ),
      child: Text(
        chiffre,
        style: TextStyle(
          color: color,
          fontSize: 25,
        ),
      ),
    );
  }
}
