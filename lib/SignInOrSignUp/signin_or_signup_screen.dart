import 'package:chat_app/components/primary_button.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/welcome/chats/chats_screen.dart';
import 'package:flutter/material.dart';
class SigninOrSignupScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(flex: 2),
          Image.asset(
            MediaQuery.of(context).platformBrightness == Brightness.light 
            ? "assets/images/Logo_light.png"
            : "assets/images/Logo_dark.png",
           height: 146,
          ),
          Spacer(),
          PrimaryButton(
            text: "SignIn",
           press: () => Navigator.push(
             context,
              MaterialPageRoute(
                builder: (context) => ChatScreen(),
                ), 
                ),
           ),
          
           SizedBox(height: kDefaultPadding * 1.5),
           PrimaryButton(
             color: Theme.of(context).colorScheme.secondary,
             text: "SignUp",
           press: () {}
           ),
          Spacer(flex: 2)
      ],
      ),
        ),
      ),
    );
  }
}