import 'package:flutter/material.dart';

// ignore: must_be_immutable
class singleCall extends StatelessWidget {
  final String name,date;
  var callColor;
   singleCall({super.key, required this.name,
    required this.date,required this.callColor});

  @override
  Widget build(BuildContext context) {
    return                       Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
                          child:  Row(
                            children: [
                              CircleAvatar(
                                radius: 22.0,
                                backgroundColor:callColor ,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                  Row(
                                    children: [
                                     const Icon(Icons.call_received_outlined),
                                     const SizedBox(
                                      width: 5.0,
                                     ) ,
                                      Text(date,),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Expanded(child: IconButton(icon:Icon(Icons.call), onPressed: () { },))
                            ],
                          ),
                        ),
    );
  }
}