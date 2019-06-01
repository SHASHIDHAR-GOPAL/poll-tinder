import 'package:flutter/material.dart';

class Actions extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ActionState();
}

class _ActionState extends State<Actions> {
  bool like;

  @override
  void initState() {
    like = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
              icon: Icon(
                !like ? Icons.favorite_border : Icons.favorite,
                color: Colors.red,
              ),
              onPressed: onPressLike),
          IconButton(
              icon: Icon(Icons.cancel, color: Colors.red), onPressed: () {}),
        ],
      ),
    );
  }

  void onPressLike() {
    this.setState(() => like = !like);
  }
}
