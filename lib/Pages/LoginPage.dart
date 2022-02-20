import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveTohome(BuildContext) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(milliseconds: 300));
      await Navigator.pushNamed(context, MyRoutes.profileRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/images/Login_img2.png.png",
                fit: BoxFit.fitWidth,
                height: 290,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Username",
                          labelStyle: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username Cannot be empty!";
                        }

                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.black87,
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password Cannot be empty";
                        }
                        if (value!.length < 6) {
                          return "Password length should be atleast 6";
                        }

                        return null;
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              Material(
                color: Colors.lightGreen[300],
                borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                child: InkWell(
                  hoverColor: Colors.black,
                  onTap: () => moveTohome(context),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 40,
                    width: changeButton ? 50 : 150,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(Icons.done_rounded)
                        : Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                  ),
                ),
              ),

              // ElevatedButton(
              //   child: const Text("Login"),
              //   style: TextButton.styleFrom(
              //     minimumSize: Size(200, 40),
              //     shadowColor: Colors.black,
              //     backgroundColor: Colors.lightGreen[300],
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.profileRoute);
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
