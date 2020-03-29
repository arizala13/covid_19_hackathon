import 'package:flutter/material.dart';


class CommunityViewScreen extends StatefulWidget {
  
  @override
  _CommunityViewScreenState createState() => _CommunityViewScreenState();
}

class _CommunityViewScreenState extends State<CommunityViewScreen> {

  @override
    Widget build(BuildContext context) {
          return new Scaffold(
            appBar: AppBar(
        title: Text("Community"),
        backgroundColor: Colors.blue,
      ),
      body: new Padding(
          padding: const EdgeInsets.all(30.0),
          child:new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
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
                padding: EdgeInsets.all(5),
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
          new Container(height: 20.0,),
          new Container(
          child: 
          Card(
            child: ListTile(
            leading: FlutterLogo(),
            title: Text('Test post 1'),
            ),
          ),
    ),
             new Container(
          child: 
          Card(
            child: ListTile(
            leading: FlutterLogo(),
            title: Text('Test post 2'),
            ),
          ),
    ),
                 new Container(
          child: 
          Card(
            child: ListTile(
            leading: FlutterLogo(),
            title: Text('Test post 3'),
            ),
          ),
    ),
                     new Container(
          child: 
          Card(
            child: ListTile(
            leading: FlutterLogo(),
            title: Text('Test post 3'),
            ),
          ),
    )

        ],
      ),),
    );
  }
  }
