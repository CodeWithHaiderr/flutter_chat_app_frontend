


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_chat_app/components/text_messages.dart';
import 'package:my_chat_app/components/video_message.dart';

import '../constants.dart';
import '../models/chat_message.dart';
import 'audio_message.dart';

class Messages extends StatelessWidget {
  const Messages({
    super.key, required this.message,
  });
  final ChatMessage message;

  @override
  Widget build(BuildContext context) {

    Widget messageContaint(ChatMessage message){
      switch (message.messageType){
        case ChatMessageType.text:
          return TextMessages(message: message,);
          break;
        case ChatMessageType.audio:
          return AudioMessage(message: message,);
          break;
        case ChatMessageType.video:
          return VideoMessage();
          break;
        default:
          return SizedBox();
      }
    }
    return Padding(
      padding:  EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment: message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if(!message.isSender)...[
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/my_chat_logo_2.png"),
            ),
            SizedBox(width: kDefaultPadding / 5,),
          ],
          messageContaint(message),
          if(message.isSender) MessageStatusDot(status: message.messageStatus,)
        ],

      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  const MessageStatusDot({Key? key, required this.status}) : super(key: key);

  final MessageStatus status;

  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status){
      switch(status){
        case MessageStatus.not_sent:
          return kErrorColor;
          break;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.1);
          break;
        case MessageStatus.viewed:
          return kPrimaryColor;
          break;
        default:
          return Colors.transparent;
      }
    }
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(status),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}




