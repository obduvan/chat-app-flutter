import 'package:flutter/material.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({Key? key, required this.title}) : super(key: key);
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: AppBar(
        title: Text(title),
        actions: [
          Container(
            child: Icon(Icons.search),
            padding: EdgeInsets.only(right: 15),
          )
        ],
        elevation: 2,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
