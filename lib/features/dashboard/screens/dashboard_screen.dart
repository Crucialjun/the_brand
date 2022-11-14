import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_brand/features/utils/models/objects.dart';
import 'package:the_brand/features/utils/models/template.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Template? template;

  List<Objects> layers = [];
  var size, height, width;
  @override
  void initState() {
    super.initState();

    //loadJson();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: loadJson(),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              return Container(
                  height: (height * template!.canvasHeight) / 1009,
                  width: (width * template!.canvasWidth) / 1920,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Stack(children: [
                    for (var i in layers)
                      Positioned(
                          left: (width * i.left) / 1920,
                          top: (height * i.top) / 1009,
                          child: i.type == "i-text"
                              ? Transform.scale(
                                  scale: i.scaleX,
                                  child: Text(
                                    "${i.text}",
                                    style: TextStyle(
                                      fontSize: i.fontSize!.toDouble(),
                                    ),
                                  ),
                                )
                              : Transform.scale(
                                  scale: i.scaleY,
                                  child: Opacity(
                                    opacity: i.opacity ?? 0,
                                    child: Image.network(
                                      i.src ?? "",
                                      height: (height * i.height) / 1009,
                                      width: (width * i.width) / 1920,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ))
                  ]));
            }),
          ),
        ),
      ),
    );
  }

  Future loadJson() async {
    await rootBundle.loadString("assets/jsons/data_json.json").then((value) {
      var decodedjson = jsonDecode(value);
      template = Template.fromJson(decodedjson[0]);

      layers.addAll(template!.canvas!.objects!);
    });
  }
}
