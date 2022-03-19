import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:her_care/screens/login.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          selected: true,
          leading: Icon(Icons.contacts),
          title: Text("Add Emergency Contacts"),
          onTap: () => Get.toNamed('/contacts'),
          // {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => QrScreen()),
          // );

          // },
        ),
        ListTile(
          selected: true,
          leading: Icon(Icons.info_outline),
          title: Text("About this app"),
          onTap: () async {
            return showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('About'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text('This is a demo application.'),
                        Text(' "Made with ❤️ by Sourav"'),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Dismiss'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
        ListTile(
          selected: true,
          leading: Icon(Icons.logout),
          title: Text("Logout"),
          onTap: () async {
            await FirebaseAuth.instance.signOut();
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Login()),
                (route) => false);
          },
        ),
      ],
    );
  }
}
