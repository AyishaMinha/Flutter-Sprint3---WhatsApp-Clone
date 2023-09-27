import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/screens/chat_details.dart';

class chatTile extends StatelessWidget {
  chatTile({super.key,
  required this.chat});

  ChatModel chat;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => chatDetails(chatModel: chat),));
      },
      leading: CircleAvatar(
        backgroundImage: AssetImage(chat.avatar),
      
    
     
      ),
       title: Text(chat.name,
       style: TextStyle(fontWeight: FontWeight.bold),
       ),

       subtitle: Text(chat.message,
       style: TextStyle(color: Colors.grey),
       ),
       trailing: Text(chat.updatedAt,

       style: TextStyle(color: Colors.grey),
       ),

    );
    
  }
}