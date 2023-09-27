import 'package:flutter/material.dart';
import 'package:whatsapp/models/singleChat.dart';

class chatBubble extends StatelessWidget {
   chatBubble({super.key,required SingleChat this.data});
   SingleChat data;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: data.isSend==true? Alignment.centerRight: Alignment.centerLeft,
      child: ConstrainedBox(constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width -150),
      child: Card(color: data.isSend==true? Color(0xffdcf8c6): Colors.white,
      child: Stack(
        children: [
          Padding(padding: EdgeInsets.only(
            left: 5,right: 30,top: 10,bottom: 20,
          ),
          child: Text(
            data.message.toString(),
            style: TextStyle(fontSize: 15),
            
            
            
          ),
          ),
          Positioned(
              bottom: 4,
              right: 2,
              child: 
              Row(
                children: [
                  Text(data.sendAt.toString()),
                 (data.isSend)? Icon(Icons.done_all,
                  color:(data.isReaded)? Colors.blue:Colors.grey,
                 size: 16,
                  ):Container(),
                ],
              )),
        ],
      )

      ,),
       ),



    );
  }
}