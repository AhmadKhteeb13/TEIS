import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../screens/home/components/body.dart';

import '../mydrawer/mydrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: buildAppBar(),
          drawer: mydrawer(),
          body: Body(),
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
    );
  }
}
