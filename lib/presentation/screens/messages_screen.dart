import 'package:chat_app_1/presentation/areas/chat_area.dart';
import 'package:chat_app_1/presentation/widgets/messages_app_bar.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);
  static const routeName = '/messages_screen';

  @override
  Widget build(BuildContext context) {
    final userName = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: MessagesAppBar(userName: userName),
      body: const ChatArea(),
    );
  }
}
