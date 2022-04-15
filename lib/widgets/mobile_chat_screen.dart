import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';
import 'package:whatsapp_clone/widgets/colors.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';
import 'package:whatsapp_clone/widgets/info.dart';
import 'package:whatsapp_clone/widgets/web-chat_appbar.dart';
import 'package:whatsapp_clone/widgets/web_screen_textarea.dart';
class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title:  Row(
         children: [
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundImage: NetworkImage(info[0]['profilePic'].toString()),
              ),
            ),
            Text(info[0]['name'].toString()),
         ],
       ),
        actions: [
      
          IconButton(onPressed: (){},
          splashRadius: 0.01,
           icon: Icon(Icons.video_call)),
          IconButton(onPressed: (){},
          splashRadius: 0.01,
           icon: Icon(Icons.call)),
          IconButton(onPressed: (){},
          splashRadius: 0.01,
           icon: Icon(Icons.more_vert),)
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Expanded(child: ChatList()),
         BottomChatArea(),
        ]),
        
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/whatsapp_background.png"),
            fit: BoxFit.cover    // this is important for the whole image to take the space of the container
            )
        ),
      ),
    );
  }
}