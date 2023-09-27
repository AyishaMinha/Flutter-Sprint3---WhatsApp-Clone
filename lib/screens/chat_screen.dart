import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/widgets/chat_tile.dart';

class ChatScreen extends StatelessWidget {
List<ChatModel> chatlist =[
  ChatModel(avatar: 'images/user3.jpg', name: 'Minhaa', isGroup: false, updatedAt: 'Today', message: 'Helloo, good morning!', status: ''),
  ChatModel(avatar: 'images/user8.jpg', name: 'Fidha', isGroup: false, updatedAt: '2:30 am', message: 'Hollo.!!', status: ''),
  ChatModel(avatar: 'images/user2.jpg', name: 'Ayisha', isGroup: false, updatedAt: '2:30 am', message: 'hiii??', status: ''),
  ChatModel(avatar: 'images/user3.jpg', name: 'Fathima', isGroup: false, updatedAt: '2:30 am', message: 'ok!!', status: ''),
  ChatModel(avatar: 'images/user4.jpg', name: 'Kanishka', isGroup: false, updatedAt: '2:30 am', message: 'Heeyy!!', status: ''),
  ChatModel(avatar: 'images/user5.jpg', name: 'Nidha', isGroup: false, updatedAt: '2:30 am', message: 'haai!?', status: ''),
  ChatModel(avatar: 'images/user6.jpg', name: 'Ishaa', isGroup: false, updatedAt: '2:30 am', message: 'hii!', status: ''),
  ChatModel(avatar: 'images/user8.jpg', name: 'Anhaa', isGroup: false, updatedAt: '2:30 am', message: 'Hmmmm!', status: ''),
  ChatModel(avatar: 'images/user3.jpg', name: 'Lanha', isGroup: false, updatedAt: '2:30 am', message: 'Heeeyy!!', status: ''),
  ChatModel(avatar: 'images/default.jpg', name: 'Faijaz', isGroup: false, updatedAt: '2:30 am', message: 'Helllo!!', status: ''),
  ChatModel(avatar: 'images/user2.jpg', name: 'Fiza', isGroup: false, updatedAt: '2:30 am', message: 'Done!!', status: ''),
  ChatModel(avatar: 'images/user3.jpg', name: 'Zehra', isGroup: false, updatedAt: '2:30 am', message: 'Hy!!', status: ''),

];



  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index){
    return  chatTile(chat: chatlist[index]);
    });

  }
}