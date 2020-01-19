import 'package:flutter/material.dart';

class ArticleScreen extends StatefulWidget {
  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Column(
            children: <Widget>[
              ContainerSample(),
            ],
          ),
        ),
        Divider(
          height: 2,
          color: Colors.grey,
        ),
        Expanded(
          flex: 7,
          child: SingleChildScrollView(
            child: SizedBox(
              width: size.width * 0.5,
              height: size.height,
              child: Card(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 1000, //幅
                        height: 200, //高さ
                        decoration: BoxDecoration(
                          color: Colors.greenAccent, //色
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 500, //幅
                        height: 200, //高さ
                        decoration: BoxDecoration(
                          color: Colors.yellowAccent, //色
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 200, //幅
                        height: 200, //高さ
                        decoration: BoxDecoration(
                          color: Colors.redAccent, //色
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget ContainerSample() {
    return Column(
      children: <Widget>[
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            width: 150, //幅
            height: 200, //高さ
            decoration: BoxDecoration(
              color: Colors.greenAccent, //色
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
        Material(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Height',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Width',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Color',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
