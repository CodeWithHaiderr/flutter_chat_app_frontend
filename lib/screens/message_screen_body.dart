import 'package:flutter/material.dart';
import 'package:my_chat_app/constants.dart';
import 'package:my_chat_app/models/chat_message.dart';

import '../components/chat_input_field.dart';
import '../components/messages.dart';
import '../components/text_messages.dart';

class MessageScreenBody extends StatelessWidget {
  const MessageScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ListView.builder(
                itemCount: demoChatMessages.length,
                  itemBuilder: (context,index) =>Messages(message: demoChatMessages[index],),
              ),
            ),
        ),
        //Spacer(),
        ChatInputField(),
      ],
    );
  }
}





