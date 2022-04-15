import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/colors.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';
class MoblieScreenLayout extends StatelessWidget {
  const MoblieScreenLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(

  /*________________________________________________APPBAR_____________________________________________________________
        3 SECTIONS - title , actions and tabs

  title - whatsapp likha hua jo hai left me
  actions - A list of Widgets to display in a row after the [title] widget. (isme ham icons dikhaye search etc waala).
  TabBar  -  3 section jo dikhane hain (chats, status, calls).                         */

        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0.0,

          //                      ---------title-------
          title: const Text(
            'WhatsApp', style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,  // doing this because IOS me apne aap text centre me aa jaat hai


          //                      ----------actions--------
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Colors.grey,),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),color: Colors.grey,),
          ],

          //                    -----------TabBar----------
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
          
            tabs: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("CHATS"),
              ), 
              
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('STATUS'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('CALLS'),
              ),
            ],
          ),
        ),

// ______________________________________________________________________BODY___________________________________________________________________________

body: ContactsList(),

floatingActionButton: FloatingActionButton(
  onPressed: () {},
  backgroundColor: tabColor,
  child: Icon(Icons.comment,color: Colors.white,)
  ),
      ));
    }
}