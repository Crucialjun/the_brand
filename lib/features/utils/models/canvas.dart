import 'package:the_brand/features/utils/models/objects.dart';

class Canvas {
  String? version;
  List<Objects>? objects;

  Canvas({this.version, this.objects});

  Canvas.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    if (json['objects'] != null) {
      objects = <Objects>[];
      json['objects'].forEach((v) {
        objects!.add(Objects.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['version'] = version;
    if (objects != null) {
      data['objects'] = objects!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
