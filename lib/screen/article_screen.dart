import 'package:flutter/material.dart';

class ArticleScreen extends StatefulWidget {
  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Card(
                color: Colors.redAccent,
              )),
              Expanded(
                  child: Card(
                color: Colors.redAccent,
              )),
              Expanded(
                  child: Card(
                color: Colors.redAccent,
              )),
              Expanded(
                  child: Card(
                color: Colors.redAccent,
              )),
              Expanded(
                  child: Card(
                color: Colors.redAccent,
              )),
              Expanded(
                  child: Card(
                color: Colors.redAccent,
              )),
            ],
          ),
        ),
        Divider(
          height: 2,
          color: Colors.grey,
        ),
        Expanded(
          flex: 7,
          child: Placeholder(),
        )
      ],
    );
  }
}
