import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gharwale"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome guys welcome back to my app"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
