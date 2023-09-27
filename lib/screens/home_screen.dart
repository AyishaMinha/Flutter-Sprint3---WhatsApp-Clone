

import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chat_screen.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabBarController;

  @override
  void initState() {
    super.initState();
    _tabBarController = TabController(length: 4, vsync: this, initialIndex: 1);
  }




  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.teal,
        title: Text(
          'WhatsApp',
           style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [
          Container(
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.camera_alt_outlined), 
            ),
            margin: EdgeInsets.only(right: 6),
          ),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (BuildContext context){
            return[
              PopupMenuItem(
                child: Text('New Group'),
              
              ),
              PopupMenuItem(child: Text('New broadcast'),
              ),

              PopupMenuItem(child: Text('linked device'),
              ),
              PopupMenuItem(child: Text('Payments'),
              ),
              PopupMenuItem(child: Text('Settings'),
              ),


            ];
          })
          
        ],

  
  bottom: TabBar(
            tabs: [
              Icon(Icons.people, color: Colors.white,), 
              Text('CHATS',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
              
              ),
               Text('STATUS',
               style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
               
               ), 
              Text('CALLS',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
              
              ),
              ],
            controller: _tabBarController,
          ),
           ),
        body: TabBarView(
          controller: _tabBarController,
          children: [
            Text('community'),
            ChatScreen(),
            Text('Status'),
            Text('Call')
          ],
        ));
  }
  }

  
  
  



      

      // body: Center(
      //   child: Container(
      //     child: 
      //     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      //       Text('Ayisha'),
      //       Text('Minha'),
      //       Container(
      //         child: Text('Text3'),
      //         height: 100,
      //         decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
      //       )
            
      //     ]),
      //     height: 100,
      //     decoration: BoxDecoration(color: Colors.grey),
          
      //   ),
   