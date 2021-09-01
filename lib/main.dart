// data
// domain
// internal (add dependecies)
// ui

import 'package:chat_app_1/presentation/screens/messages_screen.dart';
import 'package:flutter/material.dart';

import 'presentation/screens/auth_screen.dart';
import 'presentation/screens/chats_screen.dart';

void main() => runApp(const Messenger());

class Messenger extends StatelessWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String title = 'Messenger';
    return MaterialApp(
      title: title,
      theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      // home: HomePage(title: title),
      home: AuthScreen(),

      routes: {
        AuthScreen.routeName: (context) => const AuthScreen(),
        ChatsScreen.routeName: (context) => const ChatsScreen(title: title),
        MessagesScreen.routeName: (context) => const MessagesScreen(),
      },
    );
  }
}

