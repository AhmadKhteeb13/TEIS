import 'package:flutter/material.dart';
import './linkcard.dart';
import '../mydrawer/mydrawer.dart';

class strengthofmaterials extends StatefulWidget {
  _strengthofmaterialsState createState() => _strengthofmaterialsState();
}
class _strengthofmaterialsState extends State<strengthofmaterials> {
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text("مقاومة المواد",style: TextStyle(fontFamily: 'Lateef-Regular',fontSize: hieght/22)),
              backgroundColor: Colors.blue,
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: () {})
              ],
              centerTitle: true,
              elevation: 10,
            ),
            drawer: mydrawer(),
            body: linkCard('jsonfils/strengthofmaterials.json')
        )
    );
  }
}
