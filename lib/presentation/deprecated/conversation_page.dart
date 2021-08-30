// import 'package:chat_app_1/presentation/deprecated/chat_app_bar.dart';
// import 'package:chat_app_1/presentation/deprecated/chat_list_widget.dart';
// import 'package:chat_app_1/presentation/deprecated/InputWidget.dart';
// import 'package:flutter/material.dart';

// class ConversationPage extends StatefulWidget {
//   ConversationPage({Key? key}) : super(key: key);

//   @override
//   ConversationPageState createState() => ConversationPageState();
// }

// class ConversationPageState extends State<ConversationPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: ChatAppBar(),
//         body: Stack(
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 ChatListWidget(),
//                 GestureDetector(
//                   child: InputWidget(),
//                   onPanUpdate: (details) {
//                     if (details.delta.dy < 0) {print(2);}
//                   },
//                 )
//               ],
//             )
//           ],
//         ));
//   }
// }
