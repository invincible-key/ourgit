import 'package:flutter/material.dart';
import '../global_config.dart';
import 'follow.dart';
import 'recommend.dart';
import 'hot.dart';
import 'search_page.dart';
import 'ask_page.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => new _HomePageState();

}

class _HomePageState extends State<HomePage> {

  Widget barSearch() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new FlatButton.icon(
                onPressed: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) {
                      return new SearchPage();
                    }
                  ));
                },
                icon: new Icon(
                  Icons.search,
                  color: Colors.white70,
                  size: 16.0
                ),
                label: new Text(
                  "坚果R1摄像头损坏",
                  style: new TextStyle(color: Colors.white70),
                ),
              )
          ),
          new Container(
            decoration: new BoxDecoration(
                border: new BorderDirectional(
                    start: new BorderSide(color: Colors.white70, width: 1.0)
                )
            ),
            height: 14.0,
            width: 1.0,
          ),
          new Container(
            child: new FlatButton.icon(
              onPressed: (){
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) {
                    return new AskPage();
                  }
                ));
              },
              icon: new Icon(
                Icons.border_color,
                color: Colors.white70,
                size: 14.0
              ),
              label: new Text(
                "提问",
                style: new TextStyle(color: Colors.white70),
              ),
            )
          )
        ],
      ),
      decoration: new BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: Colors.white10,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            title: barSearch(),
            bottom: new TabBar(
              tabs: [
                new Tab(text: "关注"),
                new Tab(text: "推荐"),
                new Tab(text: "热榜"),
              ],
            ),
          ),
          body: new TabBarView(
              children: [
                new Follow(),
                new Recommend(),
                new Hot()
              ]
          ),
        ),
    );
  }

}