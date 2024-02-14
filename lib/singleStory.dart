
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class singleStory extends StatelessWidget {
  final String name;
  var storyColor;
   singleStory({super.key, required this.name,required this.storyColor});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container( //person update
                      child: Row( 
                      children: [
                        CircleAvatar(
                          radius: 22.0,
                          backgroundColor:storyColor,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],
                    ),
                  ),
    );
  }
}