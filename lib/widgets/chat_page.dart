import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chat_bottom_bar.dart';

import 'chat_sample.dart';
class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child:AppBar(
          leading:Padding(
            padding: EdgeInsets.only(top:10,left:5),
            child: InkWell(
              onTap: (){},
              child:Icon(Icons.arrow_back,size: 25),
            ),
          ),
          title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("profile1.jpg",height: 45,width: 45,fit: BoxFit.cover),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nitin jiwnani",style: TextStyle(fontSize: 19),),
                    SizedBox(
                      height: 6,
                    ),
                    Text("online",style: TextStyle(fontSize: 16,color: Colors.white.withOpacity(0.9)),),
                  ],
                )
              ],
          ),
           actions: [
             Padding(
               padding: const EdgeInsets.only(right: 25,top:10),
               child: Icon(CupertinoIcons.video_camera_solid,size: 32,),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 20,top:10),
               child: Icon(Icons.call,size:24),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 10,top:10),
               child: Icon(Icons.more_vert,size:26),
             ),
           ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage("background.jpg"),fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child:Column(
            children: [
              Container(
                // width: 300,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(color:Color(0xfffff3c2),
                borderRadius: BorderRadius.circular(5),boxShadow: [
                    BoxShadow(
                      color:Colors.grey.withOpacity(0.5),blurRadius: 8
                    ),
                    ],
                ),
                child:Text("Messages and calls are end to end encrypted,no one outside of this chat can read or listen.Tap to learn more",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),

            ],
          )
        )
      ),
      bottomSheet:ChatBottomBar(),
    );
  }
}
