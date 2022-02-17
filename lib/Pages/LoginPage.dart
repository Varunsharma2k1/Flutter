import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/Login_img.png",
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            height: 50.0,
            child: Text(
              "hii!!!!!!",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const Text(
            "Welcome Back",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter Username",
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                      ),
                      labelText: "Username",
                      labelStyle: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text("Login"),
            style: TextButton.styleFrom(
                shadowColor: Colors.black,
                backgroundColor: Colors.lightGreen[300]),
            onPressed: () {
              print("Hiii Friemnds");
            },
          ),
        ],
      ),
    );
  }
}
