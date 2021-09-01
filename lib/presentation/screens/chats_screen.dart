import 'package:chat_app_1/presentation/areas/chats_area.dart';
import 'package:chat_app_1/presentation/widgets/app_drawer.dart';
import 'package:chat_app_1/presentation/widgets/chats_app_bar.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key, required this.title}) : super(key: key);
  static const String routeName = '/chats_screen';

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ChatDrawer(),
      appBar: ChatAppBar(
        title: title,
      ),
      body: ChatsArea(),
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
