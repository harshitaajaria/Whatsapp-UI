import 'package:flutter/material.dart ';
import 'package:whatsapp_clone/widgets/calls_widget.dart';
import 'package:whatsapp_clone/widgets/camera_page.dart';
import 'package:whatsapp_clone/widgets/chats_widgets.dart';
import 'package:whatsapp_clone/widgets/settings_page.dart';
import 'package:whatsapp_clone/widgets/status_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                "WhatsApp",
                style: TextStyle(fontSize: 21),
              ),
            ),

            actions: [
              const Padding(
                padding: EdgeInsets.only(top: 12.0, right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                onSelected: (value){
                  if(value==6){
                    Navigator.pushNamed(context, "SettingsPage");
                  }
                },
                color: Colors.white,
                iconSize: 28,
                padding: EdgeInsets.symmetric(vertical: 20),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                      value: 1,
                      child: Text(
                        "New Group",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      )),
                  const PopupMenuItem(
                      value: 2,
                      child: Text(
                        "New broadcast",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      )),
                  const PopupMenuItem(
                      value: 3,
                      child: Text(
                        "Linked devices",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      )),
                  const PopupMenuItem(
                      value: 4,
                      child: Text(
                        "Starred messages",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      )),
                  const PopupMenuItem(
                      value: 5,
                      child: Text(
                        "Payments",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      )),
                  const PopupMenuItem(
                      value: 6,
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            ],
          ),
        ),
         body:Column(
           children:[
             Container(
               color: Color(0xff075e55),
               child:TabBar(
                 // isScrollable: true,
                 // indicatorColor:Colors.white ,
                 // labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                 tabs:[
                   Container(width:10,
                     child: Tab(icon:Icon(Icons.camera_alt),)),
                   Container(
                     width:80,
                     child:Tab(
                       child:Row(
                         children: [
                           Text("CHATS"),
                           SizedBox(
                             width:8,
                           ),

                   Container(
                     alignment: Alignment.center,
                     height: 22,
                     width:22,
                     decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20) ),
                     child:Text("12",style: TextStyle(color: Color(0xff075e55),fontSize: 13),),
                   ),
                         ],
                       )
                     )
                   ),
                   Container(
                   width:80,
                       child:Tab(
                     child:Text("STATUS")
                 ),
                 ),
                   Container(
                     width:80,
                     child:Tab(
                         child:Text("CALLS")
                     ),
                   ),
                 ],
               ),
             ),
             Flexible(flex: 1,
                 child: TabBarView(children: [
              Container(
                color:Colors.black38
              ),
               ChatWidget(),
               StatusWidget(),
               CallsWidget(),
             ],))
           ],
         ),
      ),
    );
  }
}
