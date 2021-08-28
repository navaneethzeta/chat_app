
import 'package:chat_app/components/filled_outline_button.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/models/Chat.dart';
import 'package:chat_app/screens/welcome/messages/messages_screen.dart';

import 'package:flutter/material.dart';

import 'chat_card.dart';

class Body extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(kDefaultPadding,0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              SizedBox(width: kDefaultPadding),
              FillOutlineButton(
                press: () {},
                 text: "Active",
                 isFilled: false,
                 ),
            ],
          ),
        ),
        Expanded
        (child: ListView.builder(
          itemCount: chatsData.length,
          itemBuilder: (context , index ) => ChatCard(
            chat: chatsData[index],
            press:() => Navigator.push(context, MaterialPageRoute(builder: (context) => MessagesScreen())) ,
            ),
          ),
          ),
      ],
    );
  }
}

