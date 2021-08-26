import 'package:chat_app_1/presentation/widgets/ChatAppBar.dart';
import 'package:chat_app_1/presentation/widgets/ChatListWidget.dart';
import 'package:chat_app_1/presentation/widgets/InputWidget.dart';
import 'package:flutter/material.dart';

class ConversationPage extends StatefulWidget {
  ConversationPage({Key? key}) : super(key: key);

  @override
  ConversationPageState createState() => ConversationPageState();
}

class ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ChatAppBar(),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                ChatListWidget(),
                 InputWidget()
                 ],
            )
          ],
        ));
  }
}
