import 'package:flutter/material.dart';
import 'Screens/community_screen.dart';

import 'screens/news_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Community healthcare connected'),
            bottom: TabBar(
              tabs: [
                GestureDetector(
                    onTap: () {
                      print("Healthcare clicked");
                    },
                    child: Tab(
                        icon: Icon(
                          Icons.business,
                        ),
                        text: "Healthcare")),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new CommunityViewScreen()));
                    },
                    child: Tab(icon: Icon(Icons.home), text: "Community")),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new NewsViewScreen()));
                  },
                  child: Tab(icon: Icon(Icons.check_circle), text: "News"),
                ),
              ],
            ),
          ),
        ),
      ),
      routes: {
        '/news_screen.': (context) => NewsViewScreen(),
        '/community_screen': (context) => CommunityViewScreen(),
      },
    );
    //  '/healthcare_Screen': (context) => CommunityViewScreen(),
  }
}
