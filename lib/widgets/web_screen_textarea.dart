import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/colors.dart';

class BottomChatArea extends StatelessWidget {
  const BottomChatArea({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(height: MediaQuery.of(context).size.height*0.07,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: dividerColor)
          ),color: chatBarMessage),
          child: Row(children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,))
           , IconButton(onPressed: (){}, icon: Icon(Icons.attach_file_rounded,color: Colors.grey,))
           ,Expanded(child: Padding(padding: EdgeInsets.only(left: 10,right: 15),
           child: TextField(decoration: InputDecoration(
             fillColor: searchBarColor,
             filled: true,
             hintText: 'Type a message',
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
             borderSide: BorderSide(width: 0,style: BorderStyle.none)),
             contentPadding: EdgeInsets.only(left: 20),
           ),),
           )
           
           ),
           IconButton(onPressed: (){}, icon: Icon(Icons.mic,color: Colors.grey,))
          ]),
          );
  }
}