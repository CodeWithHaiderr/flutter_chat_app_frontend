



import 'package:flutter/material.dart';
import 'package:my_chat_app/constants.dart';
import 'package:my_chat_app/screens/message_screen_body.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MessageScreenBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("assets/images/my_chat_logo.jpg"),
          ),
          SizedBox(width: kDefaultPadding * 0.75,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hurr Abbas",style: TextStyle(fontSize: 16),),
              Text("Active 3m ago",style: TextStyle(fontSize: 12),),
            ],
          )
        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.call),),
        IconButton(onPressed: (){}, icon: Icon(Icons.videocam))
      ],
    );
  }
}
