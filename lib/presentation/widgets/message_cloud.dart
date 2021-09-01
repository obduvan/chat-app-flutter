import 'dart:ui';

import 'package:chat_app_1/domain/models/model_message.dart';
import 'package:flutter/material.dart';

class MessageCloud extends StatelessWidget {
  MessageCloud({Key? key, required this.messageModel}) : super(key: key);
  final MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      alignment: (messageModel.messageType == MessageType.received
          ? Alignment.topLeft
          : Alignment.topRight),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
        
          color: (messageModel.messageType == MessageType.received
              ? Colors.blueGrey[100]
              : Colors.grey.shade200),
        ),
        padding: const EdgeInsets.all(10),
        child: Text(
          messageModel.messageContent,
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
