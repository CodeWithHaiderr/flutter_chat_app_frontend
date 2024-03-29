



import 'package:flutter/material.dart';
import 'package:my_chat_app/constants.dart';

class FillOutLineButton extends StatelessWidget {
  const FillOutLineButton({Key? key, this.isFilled = true, required this.press, required this.text}) : super(key: key);

  final bool isFilled;
  final VoidCallback press;
  final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side:  BorderSide(color: Colors.white),
        ),
        elevation: isFilled ? 4 : 0,
        color: isFilled ? Colors.white : Colors.transparent,
        onPressed: press,
    child: Text(
      text,
      style: TextStyle(
        color: isFilled ? kContentColorLightTheme : Colors.white,
        fontSize: 12,
      ),
    ),
    );
  }
}
