


import 'package:flutter/material.dart';
import 'package:my_chat_app/components/chat_card.dart';
import 'package:my_chat_app/components/filled_online_button.dart';
import 'package:my_chat_app/constants.dart';
import 'package:my_chat_app/models/chat.dart';
import 'package:my_chat_app/screens/messages_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding / 2, 0, kDefaultPadding / 2, kDefaultPadding / 2),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutLineButton(press: (){}, text: "Recent Messages",),
              SizedBox(width: kDefaultPadding,),
              FillOutLineButton(
                press: (){},
                text: "Active",
                isFilled: false,
              )
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context,index) => ChatCard(chat: chatsData[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MessagesScreen()
                      )
                  ),
                ),
            ),
        ),
      ],
    );
  }
}

