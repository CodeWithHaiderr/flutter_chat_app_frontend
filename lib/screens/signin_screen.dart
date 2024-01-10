





import 'package:flutter/material.dart';
import 'package:my_chat_app/constants.dart';
import 'package:my_chat_app/screens/chats_screen.dart';

import '../components/primary_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding * 4),
              child: Column(
                children: [
                  Image.asset("assets/images/my_chat_logo_2.png",
                  height: 150,
                  ),
                  SizedBox(height: kDefaultPadding,),
                  Text(
                    "Sign In" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
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
                        hintText: "Password",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: PrimaryButton(
                      text: "Sign In",
                      press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatsScreen(),
                        ),
                      ),
                    ),
                  ),
                  Text("Forgot Password?",style: TextStyle(color: Colors.grey.shade500,fontSize: 12),),
                  SizedBox(height: 15,),
                  RichText(text: TextSpan(
                    text: "Dont Have an account? ",style: TextStyle(color: Colors.grey.shade500,fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(text: "SignUp",style: TextStyle(color: kPrimaryColor))
                    ]
                  )),
                ],
              ),
            ),
          )),
    );
  }
}
