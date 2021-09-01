// import 'package:chat_app_1/config_style/color_style.dart';
// import 'package:flutter/material.dart';

// class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final double height = 100;
//   @override
//   Widget build(BuildContext context) {
//     var textHeading = TextStyle(color: Palette.primaryTextColor, fontSize: 20);
//     var textStyle = TextStyle(color: Palette.secondaryTextColor);

//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           automaticallyImplyLeading: false,
//           backgroundColor: Colors.white,
//           flexibleSpace: SafeArea(
//             child: Container(
//               padding: EdgeInsets.only(right: 16, left: 16),
//               child: Row(
//                 children: <Widget>[
//                   SizedBox(
//                     width: 2,
//                   ),
//                   CircleAvatar(
//                     maxRadius: 20,
//                   ),
//                   SizedBox(
//                     width: 12,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Text(
//                           "me",
//                           style: TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.w600),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           "Online",
//                           style: TextStyle(
//                               color: Colors.grey.shade600, fontSize: 13),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Icon(
//                     Icons.settings,
//                     color: Colors.black54,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         body: Container());
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(height);
// }
