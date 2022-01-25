import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(this.colour, this.content, this.todo);
  final Color colour;
  final String content;
  final Function todo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: todo,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            content,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
