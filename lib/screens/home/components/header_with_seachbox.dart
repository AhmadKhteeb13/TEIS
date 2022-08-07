import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var hieght = size.height;
    return Container(
      margin: EdgeInsets.only(bottom: (hieght/33) * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: hieght/33,
              right: hieght/33,
              bottom: 36 + (hieght/33),
            ),
            height: size.height * 0.2 - hieght/25,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            //'Hi Engineer!'
            child: Row(
              children: <Widget>[
                Image.asset("assets/images/Applicationicon.png"),
                Spacer(),
                Text(
                  '! Hi Engineer',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,),
                ),
              ],
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //     alignment: Alignment.center,
          //     margin: EdgeInsets.symmetric(horizontal: hieght/33),
          //     padding: EdgeInsets.symmetric(horizontal: hieght/33),
          //     height: hieght/12.5,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(20),
          //       boxShadow: [
          //         BoxShadow(
          //           offset: Offset(0, 10),
          //           blurRadius: 50,
          //           color: kPrimaryColor.withOpacity(0.23),
          //         ),
          //       ],
          //     ),
          //     child: Row(
          //       children: <Widget>[
          //         Expanded(
          //           child: TextField(
          //             onChanged: (value) {},
          //             decoration: InputDecoration(
          //               hintText: "ابحث",
          //               hintStyle: TextStyle(
          //                 color: kPrimaryColor.withOpacity(0.5),fontFamily: 'Lateef-Regular',fontSize: hieght/22
          //               ),
          //               enabledBorder: InputBorder.none,
          //               focusedBorder: InputBorder.none,
          //             ),
          //           ),
          //         ),
          //         Icon(Icons.search)
          //         //Image.asset("assets/icons/Search.png"),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
