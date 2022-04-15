import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/colors.dart';

class SenderMessageCard extends StatelessWidget {
  const SenderMessageCard({ Key? key ,required this.date,required this.message}) : super(key: key);


final message;
final date;


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width-45),
          child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            color:senderMessageColor,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Stack(
              children: [
                Padding(padding: const EdgeInsets.only(left: 10, right: 30, top: 5, bottom: 20),
                child: Text(message,style: TextStyle(fontSize: 16),),),
                Positioned(
                  bottom:2,
                  right:10,
                child: Row(children: [
                  Text(date,style: TextStyle(fontSize: 13,color: Colors.white60),),
                  SizedBox(width: 5),
                  
                ],))
              ],
            ),
          ),
          
          ),
        
    );
  }
}