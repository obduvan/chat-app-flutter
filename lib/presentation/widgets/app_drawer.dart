import 'package:flutter/material.dart';

class ChatDrawer extends StatelessWidget {
  const ChatDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.grey),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  const[
                 CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.black,
                ),
                Spacer(
                  flex: 4,
                ),
                Text('Dmitry',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                Spacer(
                  flex: 1,
                ),
                Text('+788888888',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        letterSpacing: 1)),
              ],
            ),
          ),
          ListTile(
            title: Text('Contacts'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Invite Friends'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
