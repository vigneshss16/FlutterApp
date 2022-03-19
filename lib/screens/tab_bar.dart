import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:her_care/screens/chat_screen.dart';
import 'package:her_care/screens/home.dart';
import 'package:her_care/screens/settings.dart';
// import '../theme.dart';

import '../signin.dart';

class TopTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          // backgroundColor: Theme.of(context).backgroundColor,
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: GestureDetector(
                  // onTap: () => Get.toNamed('/contacts'),
                  child: Icon(
                    Icons.account_circle_rounded,
                    size: 30,
                  ),
                ),
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.group)),
                Tab(icon: Icon(Icons.location_on)),
                Tab(icon: Icon(Icons.settings)),
              ],
            ),
            title: Text(
              'Hello ${userName.substring(0, userName.indexOf(' '))}',
              style: TextStyle(
                fontFamily: 'Lobster',
                fontSize: 25,
              ),
            ),
          ),
          body: TabBarView(
            children: [
              ChatScreen(),
              Home(),
              SettingsView(),
            ],
          ),
        ),
      ),
    );
  }
}
