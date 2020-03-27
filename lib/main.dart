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
                GestureDetector(        
                  onTap: (){
                    print("Healthcare clicked");
                    }, child: Tab(icon: Icon(Icons.business,), text: "Healthcare")
                  ),
                GestureDetector(        
                  onTap: (){
                    Navigator.pushNamed(context, '/community_screen');
                    }, child:Tab(icon: Icon(Icons.home), text: "Community")
                  ),
                GestureDetector(        
                  onTap: (){
                    print("News clicked");
                    }, child:Tab(icon: Icon(Icons.check_circle), text: "News"),
                  ),
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