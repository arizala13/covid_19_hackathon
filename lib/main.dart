import 'package:flutter/material.dart';
import 'Screens/community_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/healthcare_screen.dart';
import 'screens/news_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SplashScreen(
            seconds: 4,
            navigateAfterSeconds: new MyHome(),
            title: Text(
              'Welcome to community Tree',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            image: Image.asset('assets/news/covidall.jpeg'),
            backgroundColor: Colors.white,
            styleTextUnderTheLoader: TextStyle(),
            photoSize: 100.0,
            loaderColor: Colors.red));
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
            backgroundColor: Colors.indigo[800],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Image.asset(
                 'assets/images/Logo_Color.png',
                  fit: BoxFit.contain,
                  height: 35,
                  color: Colors.white,
              ),
              Center(
                    child: Container(
                      margin: EdgeInsets.all(1.0),
                      width: 8.0,
                      height: 8.0,
                    ),
                  ),
                Text(
                  'Community Tree',
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(color: Colors.white, letterSpacing: .75),
                  ),
                ),
              ],
            ),
            bottom: TabBar(
              tabs: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new HealthCareScreen()));
                    },
                    child: Tab(icon: Icon(Icons.business), text: "Healthcare")),
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
        '/healthcare_screen': (context) => HealthCareScreen(),
        '/news_screen.': (context) => NewsViewScreen(),
        '/community_screen': (context) => CommunityViewScreen(),
      },
    );
  }
}

