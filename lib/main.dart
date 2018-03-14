import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final List<String> items = new List<String>.generate(100, (i) => "Item ${i}");

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
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index){
              return new ListTile(
                title: new Text('${items[index]}'),
              );
            }
        ),
          /*
        new ListView(
          children: <Widget>[
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
*/

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