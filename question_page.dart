import 'package:flutter/material.dart';
import '../global_config.dart';
import 'reply_page.dart';

class QuestionPage extends StatefulWidget {
  @override
  QuestionPageState createState() => new QuestionPageState();

}

class QuestionPageState extends State<QuestionPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: new AppBar(
            title: Common.searchInput(context)
        ),
        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Container(
                      child: new FlatButton(onPressed: (){}, child: new Text("物理学"), color: Colors.white10),
                      height: 30.0,
                      margin: const EdgeInsets.only(right: 8.0)
                    ),
                    new Container(
                      child: new FlatButton(onPressed: (){}, child: new Text("三体(书籍)"), color: Colors.white10),
                      height: 30.0,
                        margin: const EdgeInsets.only(right: 8.0)
                    ),
                    new Container(
                      child: new FlatButton(onPressed: (){}, child: new Text("脑洞(网络用语)"), color: Colors.white10),
                      height: 30.0,
                    )
                  ],
                ),
                padding: new EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0, right: 16.0),
                color: new Color(0xff222222),
              ),
              new Container(
                child: new Text("《三体》里的水滴有可能被制造出来吗?", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, height: 1.3, color: Colors.white70)),
                padding: new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
                alignment: Alignment.topLeft,
                color: new Color(0xff222222)
              ),
              new Container(
                child: new Text(
                    "如果，仅考虑其延长强相互作用力的特性，而不考虑其直角转弯的特性，那么水滴能被制造出来吗？换句话说，强相互作用力能够以影响微观物理量的方式延长吗？",
                    style: new TextStyle(height: 1.4, fontSize: 16.0, color: Colors.white30), textAlign: TextAlign.start
                ),
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                decoration: new BoxDecoration(
                  border: new BorderDirectional(bottom: new BorderSide(color: Colors.white10)),
                  color: new Color(0xff222222)
                ),
              ),
              new Container(
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                        flex: 1,
                        child: new Container(
                          child: new FlatButton.icon(
                            onPressed: (){},
                            icon: new Icon(Icons.group_add),
                            label: new Text("邀请回答"),
                            textTheme: ButtonTextTheme.accent,
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(end: new BorderSide(color: Colors.white10))
                          ),
                        ),
                      ),
                      new Expanded(
                        flex: 1,
                        child: new Container(
                          child: new FlatButton.icon(
                            onPressed: (){},
                            icon: new Icon(Icons.brush),
                            label: new Text("写回答"),
                            textTheme: ButtonTextTheme.accent,
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(end: new BorderSide(color: Colors.white10))
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: new BoxDecoration(
                    color: new Color(0xff222222),
                  ),
                  margin: new EdgeInsets.only()
              ),
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        child: new Text("173个回答", style: new TextStyle(color: Colors.white30)),
                        margin: const EdgeInsets.only(left: 16.0),
                      ),
                    ),
                    new Expanded(
                      child: new Container(
                        child: new FlatButton(onPressed: (){}, child: new Container(
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              new Text("按质量排序", style: new TextStyle(color: Colors.white30)),
                              new Icon(Icons.keyboard_arrow_down, color: Colors.white30)
                            ],
                          ),
                        )),
                        alignment: Alignment.centerRight,
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                color: const Color(0xff222222),
                margin: const EdgeInsets.only(bottom: 5.0),
                child: new FlatButton(
                  onPressed: (){
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) {
                          return new ReplyPage();
                        }
                    ));
                  },
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        child: new Row(
                          children: <Widget>[
                            new Container(
                              child: new CircleAvatar(
                                  backgroundImage: new NetworkImage("https://pic3.zhimg.com/fc4c1cb34c2901a1a8c05488bbd76fa2_xs.jpg"),
                                  radius: 11.0
                              ),
                            ),
                            new Text(" 游牧由", style: new TextStyle(color: Colors.white30))
                          ],
                        ),
                        padding: const EdgeInsets.only(top: 10.0),
                      ),
                      new Container(
                          child: new Text(
                              "第一，几年前我跟一个985211级别大学的物理类学科教授聊过这个问题。他很严肃的表示，使用强互作用力为工具在原子角度加工出这种水平的材料，对人类目前的物理...",
                              style: new TextStyle(height: 1.3, color: Colors.white30)
                          ),
                          margin: new EdgeInsets.only(top: 6.0, bottom: 14.0),
                          alignment: Alignment.topLeft
                      ),
                      new Container(
                        child: new Row(
                          children: <Widget>[
                            new Expanded(
                                child: new Text("1K 赞同 · 262评论 · ", style: new TextStyle(color: Colors.white30))
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(bottom: 10.0),
                      )
                    ],
                  ),
                )
              )
            ],
          ),
        )
      )
    );
  }

}