// data
// domain
// internal (add dependecies)
// ui

import 'package:chat_app_1/presentation/pages/ConversationPage.dart';
import 'package:flutter/material.dart';

import 'presentation/pages/ConversationPageList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ChatApp',
        theme: ThemeData(primarySwatch: Colors.grey),
        home: MyHomePage(title: 'MyChat'));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ConversationPageList();
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(widget.title),
    //   ),
    //   body: Center(
    //     child: Text("Hi world!"),
    //   ),
    // );
  }
}
