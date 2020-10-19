import 'package:flutter/material.dart';

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print('Left Button Pressed');
              },
              child: new Image.asset('images/dice1.png'),
            ),

//          child: Image(
//            image: AssetImage('images/dice1.png'),
//          ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  print('Right Button Pressed');
                },
                child: new Image.asset('images/dice1.png')),
//          child: Image(
//            image: AssetImage('images/dice1.png'),
//          ),
          )
        ],
      ),
    );
  }
}
