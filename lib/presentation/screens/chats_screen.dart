import 'package:chat_app_1/presentation/areas/chats_area.dart';
import 'package:chat_app_1/presentation/widgets/chats_app_bar.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  ChatsScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _ChatsScreenState createState() => _ChatsScreenState(title: title);
}

class _ChatsScreenState extends State<ChatsScreen> {
  _ChatsScreenState({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(
        title: title ,
      ),
      body: ChatsPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
    );
  }
}
