import 'package:flutter/material.dart';
import 'Screens/community_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                Tab(icon: Icon(Icons.business)),
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.check_circle)),
              ],
            ),
          ),
        ),
      ),
      routes: {
         '/community_screen': (context) => CommunityViewScreen(),
          },
    );
  }
}