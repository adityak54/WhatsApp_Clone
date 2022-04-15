import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: searchBarColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.of(context).size.width*0.40,
        height: MediaQuery.of(context).size.height*0.05,
        child: 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
               
                decoration: InputDecoration(hintText: "Search or start a new chat",
                border: InputBorder.none,
                icon: IconButton(
                  padding: EdgeInsets.only(bottom: 4.2),
                  iconSize: 20.0,
                  splashRadius: 0.1,
                  onPressed: (){},
                  icon: Icon(Icons.search),)
                ),
              ),
            ),
       
      ),
    );
  }
}