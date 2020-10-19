import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ludo App'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: HomePage(),
    ),
  ));
}

/*Stateful widget - which is dynamic and may change on user interaction or logic*/
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 5;
  String result;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'YOU ',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      //setting variable state and updating UI
                      randomizeDice();
                    },
                    child: new Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ],
              ),

//          child: Image(
//            image: AssetImage('images/dice1.png'),
//          ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'COMPUTER',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  FlatButton(
                      onPressed: () {
                        //do nothing
                        //randomizeDice();
                      },
                      child:
                          new Image.asset('images/dice$rightDiceNumber.png')),
                ],
              ),
//          child: Image(
//            image: AssetImage('images/dice1.png'),
//          ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            result,
            style: TextStyle(color: Colors.greenAccent, fontSize: 25.0),
          ),
        )
      ],
    );
  }

  void randomizeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;

      if (leftDiceNumber == rightDiceNumber) {
        result = 'Congratulations!!! YOU WIN';
      } else {
        result = '';
      }
    });
  }
}

/*Stateless widget - which is fixed and not going to change ever*/
//class HomePage extends StatelessWidget {}
