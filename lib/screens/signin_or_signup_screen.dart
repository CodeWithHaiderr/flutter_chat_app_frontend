import 'package:flutter/material.dart';
import 'package:my_chat_app/components/primary_button.dart';
import 'package:my_chat_app/constants.dart';
import 'package:my_chat_app/screens/chats_screen.dart';
import 'package:my_chat_app/screens/signin_screen.dart';
import 'package:my_chat_app/screens/signup_screen.dart';

class SignInOrSignUpScreen extends StatelessWidget {
  const SignInOrSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(
                flex: 2,
              ),
              Image.asset(
                "assets/images/my_chat_logo_2.png",
                height: 150,
              ),
              Spacer(),
              PrimaryButton(
                text: "Sign In",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                ),
              ),
              SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              PrimaryButton(
                  color: Theme.of(context).colorScheme.secondary,
                  text: "Sign Up",
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()))),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
