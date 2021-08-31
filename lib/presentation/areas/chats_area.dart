import 'package:chat_app_1/data/examples/example_chat_cards.dart';
import 'package:chat_app_1/presentation/widgets/chat_card.dart';
import 'package:flutter/material.dart';


class ChatsPage extends StatefulWidget {
  ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
   @override
  Widget build(BuildContext context) {
    var chatCardsData = ChatCards.chatCards;

    return Column(children: [
      Expanded(
          child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                    color: Colors.grey,
                  ),
              itemCount: chatCardsData.length,
              itemBuilder: (BuildContext context, int index) => ChatCard(
                    modelChatCard: chatCardsData[index],
                  )))
    ]);
  }
}