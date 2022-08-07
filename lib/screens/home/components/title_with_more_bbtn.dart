import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  TitleWithMoreBtn(title , press) {
    this.title = title;
    this.press = press;
  }
  var title, press;

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: hieght/33),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kPrimaryColor,
            onPressed: press,
            child: Text(
              "المزيد",
              style: TextStyle(color: Colors.white,fontFamily: 'Lateef-Regular',fontSize: hieght/22),

            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  TitleWithCustomUnderline(text) {
    this.text = text;
  }
  var text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var hieght = size.height;
    return Container(
      height: hieght/17,
      child: Stack(
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.only(left: hieght/132),
            child: Text(
              text,
              style: TextStyle(fontFamily: 'Lateef-Regular',fontSize: hieght/22,fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: hieght/132),
              height: hieght/97,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
