import 'package:flutter/material.dart';
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("settings",style: TextStyle(fontSize: 20),),
     ),
      body:SingleChildScrollView(
        child:Column(

          children: [
             Container(
               margin:EdgeInsets.symmetric(vertical: 12,horizontal: 12),
               child: Row(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(40),
                     child:Image.asset("profile1.jpg",height: 55,width: 55,fit:BoxFit.cover),
                   ),
                   SizedBox(
                     width: 20,
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Harshita Ajaria",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       SizedBox(
                         height: 5,
                       ),
                       Text("Keep it Simple")
                     ],
                   ),
                 ],
               ),
             ),
            ListTile(
              leading: Icon(Icons.key),
              title: Text("Account",style: TextStyle(fontSize: 17),),
              subtitle: Text("Privacy,security,change number",style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Privacy",style: TextStyle(fontSize: 17),),
              subtitle: Text("Block contacts,disappering messages",style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Icon(Icons.photo_camera_back_outlined),
              title: Text("Avatar",style: TextStyle(fontSize: 17),),
              subtitle: Text("create,edit,profile photo",style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Chats",style: TextStyle(fontSize: 17),),
              subtitle: Text("Theme,wallpapers,chat history",style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications",style: TextStyle(fontSize: 17),),
              subtitle: Text("Message,group & call tones",style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Icon(Icons.circle_outlined),
              title: Text("Storage and data",style: TextStyle(fontSize: 17),),
              subtitle: Text("Network usage , auto-download",style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Icon(Icons.language_outlined),
              title: Text("App Language",style: TextStyle(fontSize: 17),),
              subtitle: Text("English(phone's language)",style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Icon(Icons.help_outline_outlined),
              title: Text("Help",style: TextStyle(fontSize: 17),),
              subtitle: Text("Help center, contact us,privacy policy",style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Invite a friend",style: TextStyle(fontSize: 17),),
            ),

            Padding(
              padding: const EdgeInsets.only(top:60),
              child: Column(children: [
                Text("from",style: TextStyle(fontSize: 15),),
                Text("meta",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
