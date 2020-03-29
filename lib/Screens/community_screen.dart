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
        backgroundColor: Colors.indigo[800],
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
                                icon:  Icon(Icons.lightbulb_outline,
                                color: Colors.indigoAccent[700],
                                ),
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
                                icon:  Icon(Icons.live_help,
                                color: Colors.indigoAccent[700],
                                ),
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
          child: Container(
                height: 600.0,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                        Card(
                          child: Container(
                            color: Colors.grey[350],
                            child: ListTile(
                            leading: Icon(
                                Icons.lightbulb_outline,
                                color: Colors.yellowAccent[400],
                                ),
                            title: Text('Help with lawn'),
                            subtitle: Text('I have a couple of plants..'),
                            trailing: Icon(Icons.more_vert),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            color: Colors.grey[350],
                            child: ListTile(
                            leading: Icon(
                                Icons.lightbulb_outline,
                                color: Colors.yellowAccent[400],
                                ),
                            title: Text('Free Monday 03/30 to babysit'),
                            subtitle: Text('I am an experienced babysitter..'),
                            trailing: Icon(Icons.more_vert),
                            ),
                          ),
                        ),
                      Card(
                          child: Container(
                            color: Colors.grey[350],
                            child: ListTile(
                            leading: Icon(
                                Icons.live_help,
                                color: Colors.yellowAccent[400],
                                ),
                            title: Text('Need soap'),
                            subtitle: Text('Anyone have extra hand soap?'),
                            trailing: Icon(Icons.more_vert),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            color: Colors.grey[350],
                            child: ListTile(
                            leading: Icon(
                                Icons.live_help,
                                color: Colors.yellowAccent[400],
                                ),
                            title: Text('Gym equipment'),
                            subtitle: Text('Does anyone have any gym equipment that.. '),
                            trailing: Icon(Icons.more_vert),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            color: Colors.grey[350],
                            child: ListTile(
                            leading: Icon(
                                Icons.lightbulb_outline,
                                color: Colors.yellowAccent[400],
                                ),
                            subtitle: Text('I have an old tv I no longer need. Does..'),
                            trailing: Icon(Icons.more_vert),
                            title: Text('Free TV'),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            color: Colors.grey[350],
                            child: ListTile(
                            leading: Icon(
                                Icons.live_help,
                               color: Colors.yellowAccent[400],
                                ),
                            trailing: Icon(Icons.more_vert),
                            title: Text('Plants'),
                            subtitle: Text('Looking for plants, anyone know..'),
                            ),
                          ),
                        )
                  ],
                ),
              )
          )
        ],
      ),),
    );
  }
  }

