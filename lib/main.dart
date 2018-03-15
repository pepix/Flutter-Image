import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var title = "Web Images";

    return new MaterialApp(
      title: title,
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[400],
        accentColor: Colors.cyan,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body:

        new ListView(
          children: <Widget>[
            new MyButton(),
            new Center(
              child: new MyButton(),
            ),
            new ListTile(
              leading: new Icon(Icons.map),
              title: new Text("Maps"),
            ),
            new ListTile(
              leading: new Icon(Icons.photo_album),
              title: new Text("Album"),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text("Phone"),
            ),
            new Row(
              children: <Widget>[
                new Expanded(
                  child: new Container(
                    height: 400.0,
                    margin: const EdgeInsets.all(5.0),
                    color: Colors.indigo,
                  )
                )
//                new Expanded(
//                  child: new GridView.count(
//                    crossAxisCount: 2,
//                    mainAxisSpacing: 8.0, // ColumnSpace
//                    crossAxisSpacing: 8.0, // RowSpace
//                    childAspectRatio: 1.0,
//                    scrollDirection: Axis.vertical,
//                    children: <Widget>[
//                      new Container(
//                        color: Colors.red,
//                      ),
//                      new Container(
//                        color: Colors.blue,
//                      ),
//                      new Container(
//                        color: Colors.yellow,
//                      ),
//                      new Container(
//                        color: Colors.grey,
//                      ),
//                      new Container(
//                        color: Colors.green,
//                      ),
//                      new Container(
//                        color: Colors.pink,
//                      ),
//                    ],
//                  ),
//                ),
              ],
            )
          ],
        )


        /*
        body: new Center(
          child: new CachedNetworkImage(
              placeholder: new CircularProgressIndicator(),
              imageUrl: "https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true",
          ),
        ),
        */
        /*
        body: new Stack(
          children: <Widget>[
            new Center(
              child: new CircularProgressIndicator(),
            ),
            new Center(
              child: new CachedNetworkImage (
                  placeholder: new CircularProgressIndicator(),
                  imageUrl: "https://i.ytimg.com/vi/tMm7cr0ULwE/maxresdefault.jpg",
              ),
            ),
          ],
        ),
        */
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        final snackBar = new SnackBar(content: new Text("Tap!"));

        Scaffold.of(context).showSnackBar(snackBar);
      },
      onDoubleTap: (){
        final snackBar = new SnackBar(
            content: new Text("Double Tap!"),
            duration: new Duration(
              milliseconds: 500,
            ),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: new Container(
        margin: new EdgeInsets.all(12.0),
        padding: new EdgeInsets.all(12.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(16.0),
        ),
        child: new Text("My Button"),
      ),
    );
  }
}