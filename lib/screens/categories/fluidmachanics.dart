import 'package:flutter/material.dart';
import '../mydrawer/mydrawer.dart';
import './linkcard.dart';
class fluidmachanics extends StatefulWidget {
  _fluidmachanicsState createState() => _fluidmachanicsState();
}
class _fluidmachanicsState extends State<fluidmachanics> {
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text("ميكانيك السوائل",style: TextStyle(fontFamily: 'Lateef-Regular',fontSize: hieght/22)),
              backgroundColor: Colors.blue,
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: () {})
              ],
              centerTitle: true,
              elevation: 10,
            ),
            drawer: mydrawer(),
            body: linkCard('jsonfils/fluidmachanics.json')
        )
    );
  }
}

