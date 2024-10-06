import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );


class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Ask me Anything', style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold ),
      ),
    
    ),
     body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);
    
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int  value=1;
  @override

  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: (){
         setState(() {
           value=Random().nextInt(5)+1;
         });
         print('Number of $value');
      }, child: Image.asset('images/ball$value.png')),
    );
  }
}