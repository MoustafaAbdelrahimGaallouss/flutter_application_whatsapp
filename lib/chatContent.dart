import 'package:flutter/material.dart';


class chatContent extends StatefulWidget {
  final data;
  const chatContent({super.key, this.data,});

  @override
  State<chatContent> createState() => _chatContentState();
}

class _chatContentState extends State<chatContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:widget.data["chatColor"] ,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row( 
          children: [
            CircleAvatar(
            backgroundColor: widget.data["chatColor"],
          ) ,
          SizedBox(width:10,),
            Text(widget.data["chatName"]),
          ],
        ),
      ),
      body:  Container(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("Hi ${widget.data['chatName']}",
            style: TextStyle(
              fontSize: 50,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
          )
        ],),
      ),
    );
  }
}