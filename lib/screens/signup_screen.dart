







import 'package:flutter/material.dart';
import 'package:my_chat_app/constants.dart';
import 'package:my_chat_app/screens/chats_screen.dart';

import '../components/primary_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: kDefaultPadding*4),
                  child: Image.asset("assets/images/my_chat_logo_2.png",
                    height: 150,
                  ),
                ),
                SizedBox(height: kDefaultPadding,),
                Text(
                  "Sign Up" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: kDefaultPadding,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: PrimaryButton(
                    text: "Sign Up",
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatsScreen(),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                RichText(text: TextSpan(
                    text: "Already have an account ",style: TextStyle(color: Colors.grey.shade500,fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(text: "Sign In",style: TextStyle(color: kPrimaryColor))
                    ]
                )),

              ],
            ),
          )),
    );
  }
}
