import 'package:flutter/material.dart';
import 'screen/article_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('記事追加'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ArticleScreen();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(child: buildDraggable("Draggable", Icons.filter_1)),
    );
  }
  Draggable buildDraggable(String name, IconData childIcon) =>
      new Draggable(
        onDragStarted: () {
          print("Draggable.onDragStarted:");
        },
        onDraggableCanceled: (velocity, offset) {
          print("Draggable.onDraggableCanceled: velocity: $velocity, offset: $offset");
        },
        onDragCompleted: () {
          print("Draggable.onDragCompleted:");
        },
        onDragEnd: (details) {
          print("Draggable.onDragEnd: details: $details");
        },
        child: Icon(
          childIcon,
          size: 90,
        ),
        feedback: Icon(
          Icons.android,
          size: 90,
        ),
        childWhenDragging: Icon(
          Icons.flag,
          size: 90,
        ),
      );
}
