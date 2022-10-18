import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/winner.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyGame(),
  ));
}

class MyGame extends StatefulWidget {
  const MyGame({Key? key}) : super(key: key);

  @override
  State<MyGame> createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  bool check = true;
  List<String> boards = ["", "", "", "", "", "", "", "", ""];

  String b0 = "";
  String b1 = "";
  String b2 = "";
  String b3 = "";
  String b4 = "";
  String b5 = "";
  String b6 = "";
  String b7 = "";
  String b8 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 45, 45),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "X FIRST",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              game_board(b0, 0),
              game_board(b1, 1),
              game_board(b2, 2),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              game_board(b3, 3),
              game_board(b4, 4),
              game_board(b5, 5),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              game_board(b6, 6),
              game_board(b7, 7),
              game_board(b8, 8),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (ctx) => MyGame()));
              },
              child: Text("RESTART")),
        ],
      ),
    );
  }

  Widget game_board(String b, int position) {
    return InkWell(
      onTap: () {
        setState(() {
          if (position == 0) {
            if (check) {
              b0 = "X";
              check = false;
              boards[0] = b0;
            } else {
              b0 = "O";
              check = true;
              boards[0] = b0;
            }
          } else if (position == 1) {
            if (check) {
              b1 = "X";
              check = false;
              boards[1] = b1;
            } else {
              b1 = "O";
              check = true;
              boards[1] = b1;
            }
          } else if (position == 2) {
            if (check) {
              b2 = "X";
              check = false;
              boards[2] = b2;
            } else {
              b2 = "O";
              check = true;
              boards[2] = b2;
            }
          } else if (position == 3) {
            if (check) {
              b3 = "X";
              check = false;
              boards[3] = b3;
            } else {
              b3 = "O";
              check = true;
              boards[3] = b3;
            }
          } else if (position == 4) {
            if (check) {
              b4 = "X";
              check = false;
              boards[4] = b4;
            } else {
              b4 = "O";
              check = true;
              boards[4] = b4;
            }
          } else if (position == 5) {
            if (check) {
              b5 = "X";
              check = false;
              boards[5] = b5;
            } else {
              b5 = "O";
              check = true;
              boards[5] = b5;
            }
          } else if (position == 6) {
            if (check) {
              b6 = "X";
              check = false;
              boards[6] = b6;
            } else {
              b6 = "O";
              check = true;
              boards[6] = b6;
            }
          } else if (position == 7) {
            if (check) {
              b7 = "X";
              check = false;
              boards[7] = b7;
            } else {
              b7 = "O";
              check = true;
              boards[7] = b7;
            }
          } else if (position == 8) {
            if (check) {
              b8 = "X";
              check = false;
              boards[8] = b8;
            } else {
              b8 = "O";
              check = true;
              boards[8] = b8;
            }
          }

          for (int a = 0; a < 8; a++) {
            String line = "";

            switch (a) {
              case 0:
                line = boards[0] + boards[1] + boards[2];
                break;
              case 1:
                line = boards[3] + boards[4] + boards[5];
                break;
              case 2:
                line = boards[6] + boards[7] + boards[8];
                break;
              case 3:
                line = boards[0] + boards[3] + boards[6];
                break;
              case 4:
                line = boards[1] + boards[4] + boards[7];
                break;
              case 5:
                line = boards[2] + boards[5] + boards[8];
                break;
              case 6:
                line = boards[0] + boards[4] + boards[8];
                break;
              case 7:
                line = boards[2] + boards[4] + boards[6];
                break;
            }

            if (line == "XXX") {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => Winner(
                            winner: "X",
                          )));
            } else if (line == "OOO") {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => Winner(
                            winner: "O",
                          )));
            }
          }
        });
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white24),
          color: Colors.black,
        ),
        child: Center(
            child: Text(
          b,
          style: TextStyle(
              fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    );
  }
}
