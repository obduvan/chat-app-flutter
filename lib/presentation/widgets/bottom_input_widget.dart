import 'package:flutter/material.dart';

class BottomInputWidget extends StatelessWidget {
  const BottomInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: EdgeInsets.only(left: 1, bottom: 6, top: 6, right: 15),
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(width: 0),
          Expanded(
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
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: const Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              backgroundColor: Colors.black26,
              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }
}
