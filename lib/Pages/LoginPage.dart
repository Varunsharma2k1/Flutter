import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
        child: Center(
      child: Text(
        "Login Page Opie",
        style: TextStyle(
          fontSize: 50,
          color: Colors.brown,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
      ),
    ));
  }
}
