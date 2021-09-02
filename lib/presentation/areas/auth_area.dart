import 'package:chat_app_1/presentation/screens/chats_screen.dart';
import 'package:flutter/material.dart';

class AuthArea extends StatelessWidget {
  const AuthArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _getLoginField(),
          const SizedBox(
            height: 15,
          ),
          _getPasswordField(),
          const SizedBox(
            height: 50,
          ),
          _getButton(context),
        ],
      ),
    );
  }

  Material _getButton(BuildContext context) {
    return Material(
      color: Colors.grey[400],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        child: Text(
          'Register',
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 1,
            fontWeight: FontWeight.w300,
          ),
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, ChatsScreen.routeName,
              arguments: 'Messenger');
        },
      ),
    );
  }

  TextField _getLoginField() {
    return TextField(
      maxLength: 20,
      decoration: const InputDecoration(
        hintText: 'Login',
        counterText: '',
      ),
    );
  }

  TextField _getPasswordField() {
    return TextField(
      obscureText: true,
      maxLength: 30,
      decoration: const InputDecoration(
        counterText: '',
        hintText: 'Password',
      ),
    );
  }
}
