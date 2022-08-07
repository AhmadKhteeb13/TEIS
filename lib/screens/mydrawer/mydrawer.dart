import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/screens/about.dart';
import '../../screens/categories/categories.dart';
import '../../screens/home/home_screen.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import '../special/specialcategories.dart';
class mydrawer extends StatefulWidget {
  State<StatefulWidget> createState() {
    return Mydrawer();
  }
}
class Mydrawer extends State<mydrawer> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child:
      Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: Container(
        child: Drawer(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    bottomLeft: Radius.circular(70)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: GradientColors.blue)),
            child: Column(children: [
              SizedBox(
                height: height/4,
              ),
              Container(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (builder) =>HomeScreen()));
                  },
                  //height/4 = 170
                  //height/8 = 85
                  //height/16 = 42.5
                  //height/32 = 21.25
                  child: Row(children: [
                    SizedBox(width: height/32,),
                    Icon(
                      Icons.home,
                      color: Colors.white,
                      size: height/16,
                    ),
                    SizedBox(width: height/13,),
                    Text(
                      "الرئيسية",
                      style: TextStyle(
                        color: Colors.white,
                          fontFamily: 'Lateef-Regular',fontSize: height/22
                      ),
                    )
                  ],),
                ),
              ),
              SizedBox(
                height: height/11,
              ),
              Container(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (builder) => categories() ));
                  },
                  child: Row(children: [
                    SizedBox(width: height/32,),
                    Icon(
                      Icons.category,
                      color: Colors.white,
                      size: height/17,
                    ),
                    SizedBox(width: height/13,),
                    Text(
                      "الأقسام",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lateef-Regular',fontSize: height/22
                      ),
                    )
                  ],),
                ),
              ),
              SizedBox(
                height: height/11,
              ),
              Container(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (builder) => specialcategories() ));
                  },
                  child: Row(children: [
                    SizedBox(width: height/33,),
                    Icon(
                      Icons.fireplace,
                      color: Colors.white,
                      size: height/17,
                    ),
                    SizedBox(width: height/13,),
                    Text(
                      "مميز",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lateef-Regular',fontSize: height/22
                      ),
                    )
                  ],),
                ),
              ),
              SizedBox(
                height: height/11,
              ),
              Container(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (builder) => about() ));
                  },
                  child: Row(children: [
                    SizedBox(width: height/33,),
                    Icon(
                      Icons.info,
                      color: Colors.white,
                      size: height/17,
                    ),
                    SizedBox(width: height/22,),
                    Text(
                      "حول التطبيق!",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lateef-Regular',fontSize: height/22
                      ),
                    )
                  ],),
                ),
              )
            ],),
          ),
        ),
      ),
    )
    );
  }
}
