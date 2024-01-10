


import 'package:flutter/material.dart';
import 'package:my_chat_app/components/body.dart';
import 'package:my_chat_app/constants.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.person_add_alt_1,color: Colors.white,),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (value){
        setState(() {
          _selectedIndex = value;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.messenger),label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.people),label: "People"),
        BottomNavigationBarItem(icon: Icon(Icons.call),label: "Calls"),
        BottomNavigationBarItem(icon: CircleAvatar(
          radius: 14,
          backgroundImage: AssetImage(
              "assets/images/my_chat_logo.jpg"),
        ),
            label: "Profile"),

      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(

      automaticallyImplyLeading: false,
      title: Text("Chats"),
      backgroundColor: kPrimaryColor,
      actions: [
        IconButton(onPressed: (){},
            icon: Icon(Icons.search),
        ),
      ],
    );
  }
}
