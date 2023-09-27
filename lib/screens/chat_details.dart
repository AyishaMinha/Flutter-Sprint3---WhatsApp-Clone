import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/models/singleChat.dart';
import 'package:whatsapp/screens/chat_bubble.dart';
import 'package:whatsapp/widgets/utility_widget.dart';

class chatDetails extends StatefulWidget {
  chatDetails({super.key,
  required this.chatModel});

  ChatModel chatModel;

  @override
  State<chatDetails> createState() => _chatDetailsState();
}

class _chatDetailsState extends State<chatDetails> {

  List<SingleChat> chat = [
    SingleChat(isSend: true, isReaded: true, message: 'Hello, Gumorninggg!!', sendAt: '9:00 am'),
    SingleChat(isSend: false, isReaded: true, message: 'Heeyy..VeryGumorninggg to you too..', sendAt: '9:19 am'),
    // SingleChat(isSend: true, isReaded: true, message: 'howw are youu?', sendAt: '9:30 am'),
    // SingleChat(isSend: false, isReaded: true, message: 'FINE!!', sendAt: '9:35 am'),
    // SingleChat(isSend: true, isReaded: false, message: 'Wookeyy', sendAt: '9:40am'),



  ];

  TextEditingController _textController = TextEditingController();
  bool showSend = false;
  bool showEmoji = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.teal,
        leading: CircleAvatar(backgroundImage: AssetImage(widget.chatModel.avatar),),
        title: Text(widget.chatModel.name),
          
           
        actions: [
          Container(
            child: IconButton(onPressed: (){},
             icon: Icon(Icons.video_call_rounded),
            ),
            margin: EdgeInsets.only(right: 6),
          ),
          Icon(Icons.call),
          
          PopupMenuButton(itemBuilder: (BuildContext context){
            return[
              PopupMenuItem(

            
                child: Text('View Contact'),
              
              ),
              PopupMenuItem(child: Text('Media,Links,and Docs'),
              ),

              PopupMenuItem(child: Text('Search'),
              ),
              PopupMenuItem(child: Text('Mute Notification'),
              ),
              PopupMenuItem(child: Text('Disappearing Messages'),
              ),
              PopupMenuItem(child: Text('Wallpaper'),
              ),
              PopupMenuItem(child: Text('More'),
              ),
            ];
          })
        ],
      ),

      body: Stack(
        children: [

          Container(

            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('images/default.jpg',fit: BoxFit.cover,),


          ),
          ListView.builder(
            itemCount: chat.length,
            itemBuilder:  (context, index){
            return chatBubble(data: chat[index]);
          },
          ),

          Align(

             alignment: Alignment.bottomCenter,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Row(
                  children: [
             Container(
              width: MediaQuery.of(context).size.width -70,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)
              ),
              child: TextField(
                cursorColor: Colors.teal,
                style: TextStyle(fontSize: 20),
                controller: _textController,
                onChanged: (value) {
                  if (value.length > 0){
                    setState(() {
                      showSend = true;

                    });
                  } else{
                    showSend = false;

                  }

                },
                onTap: () {
                  setState(() {
                    showEmoji = true;

                  });
                },
                decoration: InputDecoration(
                  prefixIcon: IconButton(onPressed: () {
                    if (showEmoji){
                      FocusScope.of(context).unfocus();
                    }
                    setState(() {
                      showEmoji = !showEmoji;
                    });
                    
                  }, icon: (showEmoji)?Icon(Icons.emoji_emotions_outlined):Icon(Icons.keyboard)),
                  border: InputBorder.none, 
                  hintText: 'Type a message..',
                  
                  suffix: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.attach_file),
                        
                        
                        onPressed: () {
                          print('test');
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (Builder) => menu()
                          );
                        
                      }, ),


                      

                      Icon(Icons.currency_rupee_rounded),
                      UtilityWidgets().widthSpacer(10),
                      Icon(Icons.camera_alt_outlined),
                      UtilityWidgets().widthSpacer(10),
                    ],
                  )
                ),
              ),

             ) ,
             Padding(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5,),
             child: FloatingActionButton(onPressed: () {
              setState(() {
                chat.add(
                  SingleChat(isSend: true, isReaded: false, message: _textController.text, sendAt: '9:30 am')

                );
                
              });
               
             },
             child: (showSend)?Icon(Icons.send):Icon(Icons.mic),

             ),)      
                  ],
                ),
              


              ],
             ),


          ),

        ],
      ),
    );
  }

                        Widget menu() {
                        return Container(
                          height: 278,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            margin: EdgeInsets.all(15),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      iconWidget(
                                        Icon(Icons.insert_drive_file),
                                        Colors.indigo, 'Document',
                                      (){
                                        print('Document');
                                      }
                                      ),
                                      iconWidget(Icon(Icons.camera_alt),
                                      Colors.pink, 'Camera',
                                      (){
                                        print('Camera');
                                      }
                                      ),
                                      iconWidget(Icon(Icons.insert_photo),
                                      Colors.purple, 'Gallery',
                                      (){
                                        print('Gallery');
                                     
                                     }
                                      ),
                                     

                                      

                                      
                                        
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,

                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [

                                       iconWidget(
                                        Icon(Icons.headset),
                                        Colors.orange, 'Audio',
                                        (){
                                          print('audio');
                                        }
                                      ),

                                      iconWidget(Icon(Icons.location_pin),
                                      Colors.teal, 'Location',
                                      (){
                                        print('location');
                                      }
                                      ),



                                       iconWidget(Icon(Icons.contact_phone),
                                      Colors.teal, 'Contact',
                                      (){
                                        print('contact');
                                      }
                                      ),

                                    ],
                                  )
                                ],)
                              
                            )
                            

                          ),
                        );
                      }

                      Widget iconWidget(Icon icon, Color color, String text, Function fun) {
                        return GestureDetector(
                          onTap: () {
                            fun();


                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: color,
                                radius: 30,
                                child: icon,
                              ),
                              SizedBox(
                                height: 10,

                              ),
                              Text(
                                text,
                                style: TextStyle(
                                  fontSize: 20,
                                )
                              )
                            ]),
                        );
                        
                      }
                        
                      } 
  
   
  