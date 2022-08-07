import 'package:flutter/material.dart';
import '../../../screens/categories/card.dart';
import '../../../screens/categories/chemistry.dart';
import '../../../screens/categories/draw.dart';
import '../../../screens/categories/fluidmachanics.dart';
import '../../../screens/categories/machanic.dart';

class special extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    Size size = new Size(hieght/1.7, hieght*2.2);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          card("assets/images/sioen.png", "SIOEN","https://www.sioenspinning.com/",
              size
          ),
          card("assets/images/quora.png", "QUORA","https://www.quora.com/What-is-the-best-textile-engineering-field-that-I-should-choose",
              size
          ),
          card("assets/images/pdfdrive.png", "PDFDRIVE", "https://www.pdfdrive.com/textile-reference-book-for-weaving-e40269952.html",size
          ),
          card("assets/images/niir.png", "NIIR", "https://www.niir.org/books/book/complete-technology-book-on-textile-processing-with-effluent-treatment/isbn-8178330504/zb,,6c,a,0,0,a/index.html",size
          ),
        ],
      ),
    );
  }
}
