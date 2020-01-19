import 'package:flutter/material.dart';

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
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: 3000,
        width: 300,
        child: Container(
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
