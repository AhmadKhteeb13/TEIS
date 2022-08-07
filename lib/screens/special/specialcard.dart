import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'dart:developer' as developer;

class specialcard extends StatelessWidget {
  specialcard(image, title, press, size) {
    this.image = image;
    this.title = title;
    this.press = press;
    this.size = size;
  }
  var image, title, press;
  Size size = new Size(0, 0);
  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    return Container(
        margin: EdgeInsets.only(
            left: hieght/33,
            top: hieght/33,
            // bottom: kDefaultPadding * 2.5,
            right: hieght/33),
        width: size.width / 2,
        height: size.height / 8,
        child: InkWell(
          child: Column(
            children: <Widget>[
              Image.asset(
                image,
                width: size.width / 3,
                height: size.height / 15,
              ),
              Container(
                  width: size.width / 2,
                  padding: EdgeInsets.all(hieght/66),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      ),
                    ],
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      title,
                      style:
                      TextStyle(fontFamily: 'Lateef-Regular',fontSize: hieght/22),
                    ),
                  )),
            ],
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => press));
          },
        ));
  }
}
