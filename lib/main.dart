import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(new MyApp());

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
        body: new Center(
          child: new CachedNetworkImage(
              placeholder: new CircularProgressIndicator(),
              imageUrl: "https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true",
          ),
        ),
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