import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallsWidget extends StatelessWidget {
  const CallsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          children: [
            for(int i=4;i<10;i++)
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset("profile$i.jpg",
                            height: 55, width: 55, fit: BoxFit.cover),
                      ),

                     ),
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("ratan sir",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
                      Row(
                        children: [
                          Icon(Icons.call_received,color:Colors.red,size: 19,),
                          Text("(1) Today, 10:30", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),)
                        ],
                      ),
                    ],
                  ),
                 Spacer(),
                  Column(
                    children: [
                      Container(
                        child:Icon(Icons.call_sharp,color: Colors.teal),
                      ),
                    ],
                  )
                ],
              ),
            ),

            for(int i=4;i<10;i++)
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset("profile$i.jpg",
                              height: 55, width: 55, fit: BoxFit.cover),
                        ),

                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Nitin",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
                        Row(
                          children: [
                            Icon(Icons.call_made,color:Colors.green,size: 19,),
                            Text(" Today(2), 8:15", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),)
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          child:Icon(CupertinoIcons.videocam_fill,color: Colors.green,size: 29,),
                        ),
                      ],
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
