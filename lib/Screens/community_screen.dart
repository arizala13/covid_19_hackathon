import 'package:flutter/material.dart';

// Here will be the community posts 
// Things like help wanted and help needed 


class CommunityViewScreen extends StatefulWidget {
  
  @override
  _CommunityViewScreenState createState() => _CommunityViewScreenState();
}

class _CommunityViewScreenState extends State<CommunityViewScreen> {

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COMMUNITY!!!"),
        backgroundColor: Colors.teal,
      ),
    );
  }

  }