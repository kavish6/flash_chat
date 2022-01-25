import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble(
      {@required this.message, @required this.sender, @required this.isMe});

  final String message;
  final String sender;
  final bool isMe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: TextStyle(color: Colors.black38),
          ),
          Material(
              elevation: 10.0,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topLeft: isMe ? Radius.circular(30) : Radius.circular(0),
                  topRight: isMe ? Radius.circular(0) : Radius.circular(30)),
              color: isMe ? Colors.lightBlueAccent : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  message,
                  style: TextStyle(
                      color: isMe ? Colors.white : Colors.black54,
                      fontSize: 16.0),
                ),
              )),
        ],
      ),
    );
  }
}
