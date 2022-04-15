import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/info.dart';
import 'package:whatsapp_clone/widgets/my_message_card.dart';
import 'package:whatsapp_clone/widgets/senders_message_cart.dart';

class ChatList extends StatelessWidget {
  const ChatList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index){
        if(messages[index]['isMe']==true){
          return MyMessageCard(date:messages[index]['time'].toString() , message: messages[index]['text'].toString());
        }
        else{
          return SenderMessageCard(date: messages[index]['time'].toString(), message: messages[index]['text'].toString());
        }
      },
);
  }
}