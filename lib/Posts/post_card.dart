import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final image, titles, content, name, time, responses, views, postImage, votes;

  PostCard(
      {this.image,
      this.titles,
      this.content,
      this.name,
      this.time,
      this.votes,
      this.responses,
      this.views,
      this.postImage});

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  int _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              radius: 20.0,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(widget.image),
                  ),
                ),
              ),
            ),
            title: Text(
              widget.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 15.0,
                ),
                SizedBox(width: 10.0),
                Text(widget.time)
              ],
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          ListTile(
            title: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        widget.titles,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child:
                              Image.asset(widget.postImage, fit: BoxFit.cover),
                        ),
                      ],
                    )),
              ],
            ),
            subtitle: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Text(
                      widget.content,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                )),
          ),
          Container(
            padding: EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.add_circle,
                        size: 30.0,
                        color: Colors.grey,
                      ),
                      onPressed: incrementCounter,
                    ),
                    Text(
                      '$_counter' + ' votes',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Text(widget.responses +
                    " responses · " +
                    widget.views +
                    " views"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
