import 'package:flutter/material.dart';
import '../../../screens/categories/chemistry.dart';
import '../../../screens/categories/draw.dart';
import '../../../screens/categories/fluidmachanics.dart';
import '../../../screens/categories/machanic.dart';
import '../../../screens/categories/rawmaterials.dart';
import '../mydrawer/mydrawer.dart';
import '../../../screens/categories/card.dart';
import '../../../screens/categories/strengthofmaterials.dart';

class categories extends StatefulWidget {
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    Size size = new Size(hieght/1.65, hieght*1.765);
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              title: Text("الأقسام"),
              centerTitle: true,
            ),
            drawer: mydrawer(),
            body: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 218),
              children: <Widget>[
                card("assets/images/Mechanical.png", "الميكانيك", machanic(),
                    size),
                card("assets/images/Chemistry.png", "الكيمياء", chemistry(),
                    size),
                card("assets/images/draw.png", "الرسم الهندسي", draw(), size),
                card("assets/images/FluidMechanics.png", "ميكانيك السوائل",
                    fluidmachanics(), size),
                card("assets/images/57315.png", "المواد الأولية",
                    rawmaterials(), size),
                card("assets/images/5731.png", "مقاومة المواد",
                    strengthofmaterials(), size),
              ],
            )));
  }
}
/*
411.4, 683.4
 */
