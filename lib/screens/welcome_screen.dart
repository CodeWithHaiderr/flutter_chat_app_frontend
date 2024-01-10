import 'package:flutter/material.dart';
import 'package:my_chat_app/constants.dart';
import 'package:my_chat_app/screens/signin_or_signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Spacer(
            flex: 2,
          ),
          Center(
              child:
                  Image.asset("assets/images/my_chat_logo_2.png", height: 250)),
          Spacer(
            flex: 3,
          ),
          Text(
            "Welcome to \n     My Chat",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            "A fast chatting app that you \ngonna love",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.color
                  ?.withOpacity(0.64),
            ),
          ),
          Spacer(
            flex: 3,
          ),
          FittedBox(
            child: TextButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInOrSignUpScreen(),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    "Skip",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.color
                            ?.withOpacity(0.8)),
                  ),
                  SizedBox(
                    width: kDefaultPadding / 4,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.color
                        ?.withOpacity(0.8),
                  )
                ],
              ),
            ),
          ),
          Spacer(),
        ],
      )),
    );
  }
}
