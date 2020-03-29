import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsViewScreen extends StatefulWidget {
  @override
  _NewsViewScreenState createState() => _NewsViewScreenState();
}

class _NewsViewScreenState extends State<NewsViewScreen> {
  GlobalKey globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
        backgroundColor: Colors.indigo[800],
      ),
      body: RepaintBoundary(
        key: globalKey,
        child: Container(
            padding: new EdgeInsets.all(32.0),
            height: 550,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.indigo[800],
              child: Center(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/news/covid1.jpeg'),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Covid care",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                height: 2))),
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Take care of youself and other by covering your mouth when you cough",
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: Colors.white,
                              letterSpacing: .5,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            )),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo[800],
        onPressed: () async {
          final ByteData bytes =
              await rootBundle.load('assets/news/covid2.jpeg');

          await Share.file('Were thinking about you,take care', 'staysafe.jpeg',
                  bytes.buffer.asUint8List(), 'image/jpeg',
                  text: 'image')
              .catchError((e) {
            print(e);
          });
        },
        tooltip: 'Share',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
