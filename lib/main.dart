// data
// domain
// internal (add dependecies)
// ui

import 'package:chat_app_1/presentation/screens/messages_screen.dart';
import 'package:flutter/material.dart';

import 'presentation/screens/auth_screen.dart';
import 'presentation/screens/chats_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String title = 'Messenger';
    return MaterialApp(
      title: title,
      theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: HomePage(title: title),
      routes: {
        AuthScreen.routeName: (context) => const AuthScreen(),
        ChatsScreen.routeName: (context) => ChatsScreen(title: title),
        MessagesScreen.routeName: (context) => const MessagesScreen(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ChatsScreen(
      title: title,
    );
  }
}
