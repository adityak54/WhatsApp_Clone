import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {

final mobileScreenLayout;
final webScreenLayout;
  const ResponsiveLayout({ Key? key,required this.mobileScreenLayout,required this.webScreenLayout }) : super(key: key);
  // jab bhi isko call kiya jaayega...mobileScreenLayout aur webScreenLayout dono dena jaruri hai
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context, constraints){
        if(constraints.maxWidth>900){
          // agar screen width 900 se jyada to web screen aayega
          return webScreenLayout;
        }
        else{
          //  agar screen width 900 se kam hogi to mobile screen aayega
        
          return mobileScreenLayout;
        }
      }
    );
  }
}