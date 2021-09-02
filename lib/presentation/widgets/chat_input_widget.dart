import 'package:flutter/material.dart';

class ChatInputWidget extends StatelessWidget {
  const ChatInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.only(left: 1, bottom: 6, top: 6, right: 15),
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          const SizedBox(width: 40),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Message',
                hintStyle: TextStyle(color: Colors.black26, fontSize: 18),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: FloatingActionButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.send,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }
}
