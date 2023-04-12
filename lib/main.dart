
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/home_page.dart';
import 'package:whatsapp_clone/widgets/camera_screen.dart';
import 'package:whatsapp_clone/widgets/chat_page.dart';
import 'package:whatsapp_clone/widgets/settings_page.dart';
void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
      scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color:Color(0xff075e55)),
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
      ),
      routes: {
        "/":(context)=>const HomePage(),
        "SettingsPage":(context)=> SettingsPage(),
        "ChatPage":(context)=> ChatPage(),
      },
    );
  }
}
