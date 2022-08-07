import 'package:flutter/material.dart';
import '../mydrawer/mydrawer.dart';
import './linkcard.dart';
class draw extends StatefulWidget {
  _drawState createState() => _drawState();
}
class _drawState extends State<draw> {
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text("الرسم الهندسي",style: TextStyle(fontFamily: 'Lateef-Regular',fontSize: hieght/22)),
              backgroundColor: Colors.blue,
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: () {})
              ],
              centerTitle: true,
              elevation: 10,
            ),
            drawer: mydrawer(),
            body: linkCard('jsonfils/draw.json')

        )
    );
  }
}
