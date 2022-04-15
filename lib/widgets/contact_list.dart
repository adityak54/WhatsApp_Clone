import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/colors.dart';
import 'package:whatsapp_clone/widgets/info.dart';
import 'package:whatsapp_clone/widgets/mobile_chat_screen.dart';
import 'info.dart';
import 'package:whatsapp_clone/responsive/responsive_layout.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({ Key? key }) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, // very important issi ki wajah se web mode me rendering ka issue aa raha tha
      itemCount: info.length,
      itemBuilder: (context,index){
        return Column(
          children: [
            InkWell(
              onTap: (){
                if(MediaQuery.of(context).size.width<=900){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=> const MobileChatScreen(),
                ),);
                }
                  
              },
              child: ListTile(
                title: Text(info[index]['name'].toString(),style: TextStyle(fontSize: 18),),
                subtitle: Text(info[index]['message'].toString(),style: TextStyle(fontSize: 13),),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
                ),
                trailing: Text(
                  info[index]["time"].toString(),
                  style: TextStyle(color: Colors.grey,fontSize:13,)
                ),
              ),
            ),
    Divider(color: dividerColor,)
          ],
        );
      });
  }

  getcheck() {}
}