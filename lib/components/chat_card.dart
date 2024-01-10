

import 'package:flutter/material.dart';
import 'package:my_chat_app/constants.dart';

import '../models/chat.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key, required this.chat, required this.press,
  });
  final Chat chat;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75
        ),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(chat.image),
                ),
                if(chat.isActive)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            width: 3,
                          )
                      ),
                    ),
                  )
              ],
            ),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(chat.name,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    SizedBox(height: 8,),
                    Opacity(
                        opacity: 0.65,
                        child: Text(chat.lastMessage,style: TextStyle(fontSize: 14), maxLines: 1, overflow: TextOverflow.ellipsis,)),
                  ],
                ),
              ),
            ),
            Opacity(
                opacity: 0.64,
                child: Text(chat.time,style: TextStyle(fontSize: 11),)),
          ],
        ),
      ),
    );
  }
}
