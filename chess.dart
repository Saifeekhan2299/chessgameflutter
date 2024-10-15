import 'package:flutter/material.dart';

void main() {
  runApp(ChessBoardApp());
}

class ChessBoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chess Board',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chess Board'),
        ),
        body: Center(
          child: ChessBoard(),
        ),
      ),
    );
  }
}

class ChessBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8,
        ),
        itemBuilder: (context, index) {
          int row = index ~/ 8;
          int col = index % 8;
          bool isBlackSquare = (row + col) % 2 == 1;

          return Container(
            color: isBlackSquare ? Colors.black : Colors.white,
          );
        },
      ),
    );
  }
}