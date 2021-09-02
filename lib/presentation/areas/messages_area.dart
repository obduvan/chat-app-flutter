import 'package:chat_app_1/data/examples/example_messages.dart';
import 'package:chat_app_1/presentation/widgets/message_cloud.dart';
import 'package:flutter/material.dart';

class MessagesArea extends StatefulWidget {
  const MessagesArea({Key? key}) : super(key: key);

  @override
  _MessagesAreaState createState() => _MessagesAreaState();
}

class _MessagesAreaState extends State<MessagesArea> {
  @override
  Widget build(BuildContext context) {
    var messages = Messages.messages;

    return Expanded(
      child: ListView.builder(
        itemCount: messages.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext ontext, int index) => MessageCloud(
          messageModel: messages[index],
        ),
      ),
    );
  }
}
