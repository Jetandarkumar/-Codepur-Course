import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl = "https://avatars.githubusercontent.com/u/12619420?v=4";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountName: const Text("Pawan Kumar"),
                    accountEmail: const Text("MtechDrawer@gmail.com"),
                    currentAccountPicture:
                        CircleAvatar(backgroundImage: NetworkImage(imageUrl)))),
            const ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                textScaleFactor: 1.1,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.circle, color: Colors.white),
              title: Text(
                "Profile",
                textScaleFactor: 1.1,
                style: TextStyle(color: Colors.white),
              ),
            ),

            const ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                "Email",
                textScaleFactor: 1.1,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
