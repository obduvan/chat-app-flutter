import 'package:chat_app_1/presentation/areas/messages_area.dart';
import 'package:chat_app_1/presentation/widgets/chat_input_widget.dart';
import 'package:flutter/material.dart';

class ChatArea extends StatelessWidget {
  const ChatArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
         MessagesArea(),
         ChatInputWidget(),
      ],
    );
  }
}