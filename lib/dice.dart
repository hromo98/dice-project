import 'dart:math';

import 'package:flutter/material.dart';

class Dicee extends StatefulWidget {
  Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int dice1 = 1;
  int dice2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.red,
        title: Center(child: Text("Dice")),
      ),
      body: Container(
        color: Colors.red,
        height: double.infinity,
        width: double.infinity,
        child: InkWell(
          onTap: () {
            setState(() {
              dice1 = Random().nextInt(6) + 1; // 0 1 2 3 4 5
              dice2 = Random().nextInt(6) + 1;
            });
          },
          child: Column(
            children: [
              Row(
                children: [
                  // if (dice1 == null && dice2 == null) Text("Tap Here",style: TextStyle(fontSize: 30),),
                  // if (dice1 != null && dice2 != null) Text('${dice1 + dice2}'),
                  Image.asset(
                    'assets/dice$dice1.png',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(width: 150),
                  // if(dice1 != null && dice2 != null) Text('${dice1 + dice2}'),
                  Image.asset(
                    'assets/dice$dice2.png',
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
              Text(
                '${dice1 + dice2} result',
                style: const TextStyle(color: Colors.yellow),
              )
            ],
          ),
        ),
      ),
    );
  }
}
