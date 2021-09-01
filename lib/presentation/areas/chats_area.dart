import 'package:chat_app_1/data/examples/example_chat_cards.dart';
import 'package:chat_app_1/presentation/widgets/chat_card.dart';
import 'package:flutter/material.dart';


class ChatsArea extends StatefulWidget {
  const ChatsArea({Key? key}) : super(key: key);

  @override
  _ChatsAreaState createState() => _ChatsAreaState();
}

class _ChatsAreaState extends State<ChatsArea> {
   @override
  Widget build(BuildContext context) {
    var chatCardsData = ChatCards.chatCards;

    return Column(children: [
      Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(
                      color: Colors.grey,
                      indent: 70,
                      thickness: 0.2,
                    ),
                itemCount: chatCardsData.length,
                itemBuilder: (BuildContext context, int index) => ChatCard(
                      modelChatCard: chatCardsData[index],
                    )),
          ))
    ]);
  }
}