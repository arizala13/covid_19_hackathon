import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final image, titles, content, name, time, votes, responses, views, postImage;

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
                    image: NetworkImage(image),
                  ),
                ),
              ),
            ),
            title: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 15.0,
                ),
                Text(time)
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
                        titles,
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
                          child: Image.asset(postImage, fit: BoxFit.cover),
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
                      content,
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
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.add_circle,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 0.0),
                      child: Text(votes),
                    ),
                    CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.remove_circle,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(responses + " responses · " + views + " views"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
