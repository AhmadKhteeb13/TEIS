import 'package:flutter/material.dart';
import '../constants.dart';
import '../screens/mydrawer/mydrawer.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var hieght = size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            shadowColor: Color(0),
            title: Text("ABOUT"),
            centerTitle: true,
          ),
          drawer: mydrawer(),
          body: Container(
            margin: EdgeInsets.only(bottom: (hieght/33) * 1.5),
            height: size.height * 0.7,
            child: Stack(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(
                      left: hieght/33,
                      right: hieght/33,
                      bottom: hieght/19 + hieght/33,
                    ),
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      ),
                    )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: hieght/33),
                    padding: EdgeInsets.symmetric(horizontal: hieght/33),
                    height: size.height / 2,
                    child: Text(
                        " نتيجة رؤيتنا لحاجة الطلاب إلى الوصول إلى المراجع العلمبة الموثوقة واختصار الوقت في البحث قمنا بتتطوير هذا البرنامج الذي يهدف إلى الوصول إلى أفضل المراجع بأقصر وقت.\n\n\n بواسطة أحمد خطيب"),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
