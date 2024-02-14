import"package:flutter/material.dart";
import 'package:flutter_application_new/singleChat.dart';
import 'package:flutter_application_new/singleStory.dart';
import 'package:flutter_application_new/singleCall.dart';
import 'package:flutter_application_new/data.dart';
import 'package:flutter_application_new/chatContent.dart';


void main() {
 runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 3,
        child: Scaffold(
         
          appBar: AppBar(
            title: const Text("WhatsApp"),
            actions:  [
             IconButton(icon:const Icon(Icons.camera_alt),onPressed: (){},),
              IconButton(icon:const Icon(Icons.search),onPressed: (){},),
             //Icon(Icons.menu_outlined),
              //IconButton(icon:const Icon(Icons.more_vert),onPressed: (){},),
              PopupMenuButton(
                surfaceTintColor: Colors.black,
                itemBuilder: (context)=>[
                PopupMenuItem(child: Text("New Group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred masseges")),
                PopupMenuItem(child: Text("Settings")),
                PopupMenuItem(child: Text("Switch account"),),
                
              ])
            ],
          bottom: const TabBar(tabs: [
            Tab(child: Text("Chats"),),
            Tab(child: Text("updates"),),
            Tab(child: Text("Calls"),),
          ]),
          ),
          body:  Container(
            padding: const EdgeInsets.all(10.0),
            child:  TabBarView(children: [
              Container(   //Chats
                child: ListView.builder(
                  itemCount:Chats.length ,
                  itemBuilder:(context,i){
                  return  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>chatContent(data: Chats[i],)));
                    },
                    child: singleChat(name: Chats[i]["chatName"],
                     content: Chats[i]["chatContent"], 
                    chatColor:  Chats[i]["chatColor"], ),
                  );
                  },
                  
                )
              ),
             Container( //Stores
                child: ListView.builder(
                  itemCount: Stores.length,
                  itemBuilder: ( context, i){
                    return InkWell(
                      onTap: (){},
                      child: singleStory(name: Stores[i]["storyName"],
                        storyColor:  Stores[i]["storyColor"],),
                    );
                  },
                
                )
              ),
             Container( //Calls
                child:ListView.builder(
                  itemCount: Calls.length,
                  itemBuilder: (context,i){
                    return InkWell(
                      onTap: (){},
                      child:singleCall(name:Calls[i]["callName"] ,
                       date:Calls[i]["callDate"],callColor:Calls[i]["callColor"] ,) ,
                    );
                })
              ),
            ]
            ),
          )
           
            ),
      ),
    );
  }
}