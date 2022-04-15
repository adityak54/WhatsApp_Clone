import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/colors.dart';
import 'package:whatsapp_clone/moblie_screen_layout.dart';
import 'package:whatsapp_clone/responsive/responsive_layout.dart';
import 'package:whatsapp_clone/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:  Color.fromRGBO(19, 28, 33,1),
      ),
      home: ResponsiveLayout(mobileScreenLayout: MoblieScreenLayout(),webScreenLayout: WebScreenLayout(),),
      debugShowCheckedModeBanner: false,
    );
  }
  }