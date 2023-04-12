import 'package:flutter/material.dart';
class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      child: Column(
        children: [
          for(int i=1;i<11;i++)
          InkWell(onTap: (){
            Navigator.pushNamed(context, "ChatPage");
          },
           child: Container(
            margin: const EdgeInsets.symmetric(vertical: 12 ),
             child: Container(
               child:Row(
                 children:[
                   ClipRRect(
                   borderRadius: BorderRadius.circular(40),
                     child:Image.asset("profile$i.jpg",height:65,width: 65,fit:BoxFit.cover),
                   ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ratan Sir",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),),
                        SizedBox(
                          height: 8,
                        ),
                        Text("heyy, how are you",style: TextStyle(fontSize: 16,color:Colors.black),)
                      ],
                    ),
                  ),
                 Spacer(),
                 Column(
                   children: [
                     Text("22:00",style: TextStyle(fontSize: 15,color:Colors.green,fontWeight: FontWeight.w500 ),),
                     SizedBox(
                       height: 6,
                     ),
                     Container(
                       alignment: Alignment.center,
                       width:27,
                       height: 27,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                     child:Text("2",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
                     ),
                   ],
                 )
                 ],
               ),
             ),
           ),
          ),
        ],
      ),
      ),
    );
  }
}
