import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/main.dart';

class Winner extends StatelessWidget {
  String? winner;
  Winner({Key? key, this.winner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Winner is $winner",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (ctx) => MyGame()));
                },
                child: Text("PLAY AGAIN"))
          ],
        ),
      ),
    );
  }
}
