import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/colors.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 10,
          backgroundImage: AssetImage("assets/shanks.jpg"),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            color: appBarColor,
            child: IconButton(
            onPressed: (){},
            icon: Icon(Icons.data_usage,))),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            color: appBarColor,
            child: IconButton(
            onPressed: (){},
            icon: Icon(Icons.message)),
        ),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            color: appBarColor,
            child: IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert,))),
        ),
    
      ],
    );
  }
}