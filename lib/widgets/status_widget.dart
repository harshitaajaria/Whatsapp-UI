import 'package:flutter/material.dart';
class StatusWidget extends StatelessWidget {
  const StatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Padding(
        padding:EdgeInsets.symmetric(vertical: 8,horizontal: 15),
       child:Column(

         children: [
          Container(

            child:Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border:Border.all(color: Colors.green,width:3),
                    ),
                    padding: EdgeInsets.all(1),
                    child:ClipRRect(borderRadius: BorderRadius.circular(40),
                        child:Image.asset("profile1.jpg",height: 55,width: 55,fit:BoxFit.cover),),

                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My status",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Today, 14:52",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                  ],
                ),
                Spacer(),
                Container(
                  child: Icon(Icons.more_vert,color: Colors.green,),
                ),
              ],
            )
          ),
           SizedBox(
             height: 20,
           ),
           Container(
             alignment: Alignment.centerLeft,
             child:Text("Recent updates")
           ),
           SizedBox(
             height: 20,
           ),
         for(int i=1;i<2;i++)
           Container(
               child:Row(
                 children: [
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(40),
                       border:Border.all(color: Colors.green,width:3),
                     ),
                     padding: EdgeInsets.all(1),
                     child:ClipRRect(borderRadius: BorderRadius.circular(40),
                       child:Image.asset("status$i.jpg",height: 55,width: 55,fit:BoxFit.cover),),

                   ),
                   SizedBox(
                     width: 20,
                   ),

                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Virat Kohli",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
                       SizedBox(
                         height: 8,
                       ),
                       Text("Today, 22:35",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                     ],
                   ),
                 ],
               )
           ),
        SizedBox(
          height: 20,
        ),
           Container(
               alignment: Alignment.centerLeft,
               child:Text("Viewed updates"),
           ),
           SizedBox(
             height: 18,
           ),
           for(int i=2;i<=3;i++)
             Container(
                 child:Row(
                   children: [
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(40),
                         border:Border.all(color: Colors.grey,width:3),
                       ),
                       padding: EdgeInsets.all(1),
                       child:ClipRRect(borderRadius: BorderRadius.circular(40),
                         child:Image.asset("status$i.jpg",height: 55,width: 55,fit:BoxFit.cover),),

                     ),
                     SizedBox(
                       width: 20,
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 15),
                       child: Column(

                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("MS dhoni",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),),
                           SizedBox(
                             height: 8,
                           ),
                           Text("yesterday, 20:10",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                         ],
                       ),
                     ),
                   ],
                 ),
             ),
         ],
        ),
      ),
    );
  }
}
