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
  @override
  void initState() {
    super.initState();

    //loadJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: FutureBuilder(
        future: loadJson(),
        builder: ((context, snapshot) {
          return Column(children: [
            const Text("Template"),
            Expanded(
                child: Container(
              height: template?.canvasHeight,
              width: template?.canvasWidth,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Stack(children: [
                for (var i in layers)
                  Positioned(
                      left: i.left,
                      top: i.top,
                      child: i.type == "i-text"
                          ? Text(i.text ?? "")
                          : Image.network(i.src ?? ""))
              ]),
            ))
          ]);
        }),
      )),
    );
  }

  Future loadJson() async {
    var json = await rootBundle.loadString("assets/jsons/data_json.json");
    var decodedjson = jsonDecode(json);
    template = Template.fromJson(decodedjson[0]);

    layers.addAll(template!.canvas!.objects!);
  }
}
