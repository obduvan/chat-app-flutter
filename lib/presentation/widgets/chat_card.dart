import 'package:chat_app_1/domain/models/model_chat_card.dart';
import 'package:chat_app_1/presentation/screens/messages_screen.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.modelChatCard,
  }) : super(key: key);

  final ModelChatCard modelChatCard;
  // final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, MessagesScreen.routeName, arguments: modelChatCard.name);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: Row(children: [
          getAvatar(context),
          getUserInformation(),
          getUserActiveStatus()
        ]),
      ),
    );
  }

  Expanded getUserInformation() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              modelChatCard.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Opacity(
              opacity: 0.64,
              child: Text(
                modelChatCard.lastMessage,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Opacity getUserActiveStatus() {
    return Opacity(opacity: 0.64, child: Text(modelChatCard.time));
  }

  Stack getAvatar(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 26,
          backgroundColor: Colors.black,
        ),
        if (modelChatCard.isActive)
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                border: Border.all(
                    color: Theme.of(context).scaffoldBackgroundColor, width: 2),
              ),
            ),
          )
      ],
    );
  }
}
