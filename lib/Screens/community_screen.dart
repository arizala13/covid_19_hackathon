import 'package:flutter/material.dart';


class CommunityViewScreen extends StatefulWidget {
  
  @override
  _CommunityViewScreenState createState() => _CommunityViewScreenState();
}

class _CommunityViewScreenState extends State<CommunityViewScreen> {

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Community"),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  alignment: Alignment.topCenter,
                        child: RaisedButton(
                        child: Semantics(
                              label: 'Add picture',
                              child: FlatButton.icon(
                                icon: const Icon(Icons.lightbulb_outline),
                                onPressed: () {
                                  //do something
                                }, label: Text('Volunteer'),
                          ),
                        ), onPressed: () {},
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  alignment: Alignment.topCenter,
                        child: RaisedButton(
                        child: Semantics(
                              label: 'Add picture',
                              child: FlatButton.icon(
                                icon: const Icon(Icons.question_answer),
                                onPressed: () {
                                  //do something
                                }, label: Text('Ask for help'),
                          ),
                        ), onPressed: () {},
                    ),
                ),
              ),
            ],
      ),
  // bottomNavigationBar: Align(
  //     child: new ListView(
  //     children: [
  //               Card(
  //       child: ListTile(
  //         leading: FlutterLogo(),
  //         title: Text('Test post 1'),
  //       ),
  //   ),
  //     ]
  //     ),
  // )
  // This doesnt work correctly. It goes over the other widgets
    );
  }
  }
