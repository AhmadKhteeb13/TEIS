import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './datalink.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:url_launcher/url_launcher.dart';

class linkCard extends StatelessWidget {
  String? _namejsonfile;
  linkCard(_namejsonfile) {
    this._namejsonfile = _namejsonfile;
  }
  @override
  Widget build(BuildContext context)  {
    var hieght = MediaQuery.of(context).size.height;
    return Scaffold(
        body: FutureBuilder(
      future: _ReadJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(child: Text("${data.error}"));
        } else if (data.hasData) {
          var items = data.data as List<datalink>;
          return ListView.builder(
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: InkWell(
                    child: Card(
                      elevation: 5,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: hieght/9,
                              height: hieght/9,
                              child: Image.asset(items[index].image.toString()),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(bottom: hieght/85),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: hieght/85, right: hieght/85),
                                      child: Text(
                                        " نبذة :",
                                        style: TextStyle(
                                            fontFamily: 'Lateef-Regular',fontSize: hieght/22
                                        ),
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: hieght/85, right: hieght/85),
                                        child: Text(
                                          items[index].plot.toString(),
                                          style: TextStyle(
                                              fontFamily: 'Lateef-Regular',fontSize: hieght/33
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: ()
                    {
                      _openLink(items[index].link.toString());
                    },
                  ),
                );
              });
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }

  Future<List<datalink>> _ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString(_namejsonfile.toString());
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => datalink.fromJson(e)).toList();
  }
}

Future<void> _openLink(String _url) async {
  if (!await launchUrl(Uri.parse(_url))) throw 'Could not launch $_url';
}
