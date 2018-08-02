import 'package:flutter/material.dart';

class MyGridView {
  
  Card getStructuredGridCell(name, image) {
    Color color;

    color = funcioncolor(name);


    return new Card(
        elevation: 1.5,
        color: color,
        margin: EdgeInsets.all(20.0),
        // shape: new Border(
        //   top: new BorderSide(width: 16.0, color: Colors.yellow),
        //   bottom: new BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
        shape: const RoundedRectangleBorder(
          borderRadius: const BorderRadius.only(
            topLeft: const Radius.circular(16.0),
            topRight: const Radius.circular(16.0),
            bottomLeft: const Radius.circular(16.0),
            bottomRight: const Radius.circular(16.0),
          ),
        ),

        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            new Image(image: new AssetImage('images/' + image)),
            new Center(
              child: new Text(name),
            )
          ],
        )

    );
  }

  GridView build() {
    return new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructuredGridCell("Facebook", "facebook.png"),
        getStructuredGridCell("Twitter", "twitter.png"),
        getStructuredGridCell("Instagram", "instagram.png"),
        getStructuredGridCell("Linkedin", "linkedin.png"),
        getStructuredGridCell("Gooogle Plus", "google_plus.png"),
        getStructuredGridCell("Launcher Icon", "Drums.gif"),
      ],
    );
  }

  funcioncolor(name){

  Color _color;
    switch (name) {
      case 'Facebook':
        _color = Colors.deepOrange;
        break;
      case 'Twitter':
        _color = Colors.grey;
        break;
      case 'Instagram':
        _color = Colors.blue;
        break;
      case 'Linkedin':
        _color = Colors.green;
        break;
      case 'Gooogle Plus':
        _color = Colors.pink;
        break;
      default:
        _color = Colors.brown;
        break;
    }

    return _color;
  }
  
}
