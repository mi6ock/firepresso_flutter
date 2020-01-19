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
      body: Container(
        child: Text("home"),
      ),
    );
  }
}
