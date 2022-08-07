import 'package:flutter/material.dart';
import '../../../screens/categories/categories.dart';
import 'header_with_seachbox.dart';
import 'recomend.dart';
import 'title_with_more_bbtn.dart';
import '../../special/special.dart';
import '../../special/specialcategories.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var hieght = size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(bottom: hieght/85),
              child: HeaderWithSearchBox(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: hieght/85),
            child: TitleWithMoreBtn("الاقتراحات", () {Navigator.push(
                context, MaterialPageRoute(builder: (builder) => categories() ));}),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: hieght/85),
            child: recomend(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: hieght/85),
            child: TitleWithMoreBtn("مميز", () {Navigator.push(
                context, MaterialPageRoute(builder: (builder) => specialcategories() ));}),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: hieght/85),
            child: special(),
          ),
          SizedBox(height: hieght/33),
        ],
      ),
    );
  }
}
