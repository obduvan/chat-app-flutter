import 'package:flutter/material.dart';

class BottomInputWidget extends StatelessWidget {
  const BottomInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 1, bottom: 6, top: 6, right: 15),
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(width: 50),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Message',
                hintStyle: TextStyle(color: Colors.black26, fontSize: 18),
                border: InputBorder.none,
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.send,
              color: Colors.white,
              size: 18,
            ),
            backgroundColor: Colors.black26,
            elevation: 0,
          ),
        ],
      ),
    );
  }
}
