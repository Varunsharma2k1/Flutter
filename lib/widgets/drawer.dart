import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/LoginPage.dart';
import 'package:flutter_application_1/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://logos.textgiraffe.com/logos/logo-name/Varun-designstyle-smoothie-m.png";
    return Drawer(
      child: Container(
        color: Colors.lightGreen[300],
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.lightGreen[400]),
                  accountName: Text("Varun Sharma"),
                  accountEmail: Text("varunsharma2k1@gmail.com"),
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              textColor: Colors.black87,
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black87,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.profileRoute);
              },
              textColor: Colors.black87,
              leading: Icon(
                CupertinoIcons.person,
                color: Colors.black87,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              textColor: Colors.black87,
              leading: Icon(
                CupertinoIcons.lock,
                color: Colors.black87,
              ),
              title: Text(
                "Login",
                textScaleFactor: 1.3,
              ),
            ),
            ListTile(
              textColor: Colors.black87,
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black87,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.3,
              ),
            ),
            ListTile(
              textColor: Colors.black87,
              leading: Icon(
                CupertinoIcons.star,
                color: Colors.black87,
              ),
              title: Text(
                "Favourites",
                textScaleFactor: 1.3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
