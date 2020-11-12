import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          StreamBuilder(builder: (context , snap){
            if(snap.hasData){
              return Center(
                child: Text(
                  "No messages"
                ),
              );
            }

            else {

              }
          })
        ],
      ),
    );
  }
}
