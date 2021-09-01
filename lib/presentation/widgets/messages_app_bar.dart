import 'package:flutter/material.dart';

class MessagesAppBar extends StatefulWidget implements PreferredSizeWidget {
  MessagesAppBar({Key? key, required this.userName}) : super(key: key);
  final String userName;

  @override
  _MessagesAppBarState createState() =>
      _MessagesAppBarState(userName: userName);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MessagesAppBarState extends State<MessagesAppBar> {
  _MessagesAppBarState({required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        titleSpacing: 7,
        title: getUserData(userName: userName),
      ),
    );
  }
}

Row getUserData({required String userName}) {
  return Row(
    children: [
      CircleAvatar(
        radius: 19,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Text(
              userName,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    ],
  );
}
