

import 'package:flutter/material.dart';

import '../constants.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 32,
              color: Color(0xFF087949).withOpacity(0.20),
            )
          ]
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
          child: Row(
            children: [
              Icon(Icons.mic, color: kPrimaryColor),
              SizedBox(width: kDefaultPadding),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75),
                    height: 50,
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.sentiment_dissatisfied,
                          color: Theme.of(context)
                              .textTheme
                              .bodyLarge?.color?.withOpacity(0.64),),
                        SizedBox(width: kDefaultPadding / 4,),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Type message",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Icon(Icons.attach_file,
                          color: Theme.of(context)
                              .textTheme
                              .bodyLarge?.color?.withOpacity(0.64),),
                        SizedBox(width: kDefaultPadding / 4,),
                        Icon(Icons.camera_alt_outlined,
                          color: Theme.of(context)
                              .textTheme
                              .bodyLarge?.color?.withOpacity(0.64),),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
