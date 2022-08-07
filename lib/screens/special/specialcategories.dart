import 'package:flutter/material.dart';
import '../mydrawer/mydrawer.dart';
import '../../screens/categories/linkcard.dart';
class specialcategories extends StatefulWidget {
  _specialcategoriesState createState() => _specialcategoriesState();
}
class _specialcategoriesState extends State<specialcategories> {
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text("مميز",style: TextStyle(fontFamily: 'Lateef-Regular',fontSize: hieght/22)),
              backgroundColor: Colors.blue,
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: () {

                })
              ],
              centerTitle: true,
              elevation: 10,
            ),
            drawer: mydrawer(),
            body: linkCard('jsonfils/special.json')
        )
    );
  }
}
