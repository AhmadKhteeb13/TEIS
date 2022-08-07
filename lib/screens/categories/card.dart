import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class card extends StatelessWidget {
  card(image, title, press, size) {
    this.image = image;
    this.title = title;
    this.press = press;
    this.size = size;
  }
  var image, title, press;
  Size size = new Size(0, 0);
  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    return Container(
        margin: EdgeInsets.only(
            left: hight/33,
            top: hight/33,
            // bottom: kDefaultPadding * 2.5,
            right: hight/33),
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
                  padding: EdgeInsets.all(hight/33 / 2),
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
                          TextStyle(fontFamily: 'Lateef-Regular',fontSize: hight/27),
                    ),
                  )),
            ],
          ),
          onTap: () {
            if(press is String)
              {
                launch(press);
              }
            else
              {
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => press));
              }

          },
        ));
  }
}
