import 'package:flutter/material.dart';
import '../../../screens/categories/card.dart';
import '../../../screens/categories/chemistry.dart';
import '../../../screens/categories/draw.dart';
import '../../../screens/categories/fluidmachanics.dart';
import '../../../screens/categories/machanic.dart';
//
class recomend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    Size size = new Size(hieght/1.7, hieght*2.2);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          card("assets/images/Mechanical.png","الميكانيك" ,machanic(),
            size
          ),
          card("assets/images/Chemistry.png", "الكيمياء",chemistry(),
              size
          ),
          card("assets/images/FluidMechanics.png", "ميكانيك السوائل", fluidmachanics(),size
          ),
          card("assets/images/draw.png", "الرسم الهندسي", draw(),size
          ),
        ],
      ),
    );
  }
}
