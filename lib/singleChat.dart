import"package:flutter/material.dart";


// ignore: must_be_immutable
class singleChat extends StatelessWidget {
  final String name,content;
  var chatColor;
   singleChat({super.key, required this.name, required this.content, required this.chatColor});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 20.0,
                            backgroundColor:chatColor,
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                              ),
                              Text(content)
                            ],
                          ),
                          //Icon(Icons.back_hand_sharp),
                        ],
                      ),
    );
  }
}