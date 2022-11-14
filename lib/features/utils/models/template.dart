import 'package:the_brand/features/utils/models/canvas.dart';
import 'package:the_brand/features/utils/models/editor.dart';

class Template {
  Canvas? canvas;
  Editor? editor;
  double? canvasWidth;
  double? canvasHeight;

  Template({this.canvas, this.editor, this.canvasWidth, this.canvasHeight});

  Template.fromJson(Map<String, dynamic> json) {
    canvas = json['canvas'] != null ? Canvas.fromJson(json['canvas']) : null;
    editor = json['editor'] != null ? Editor.fromJson(json['editor']) : null;
    canvasWidth = double.parse(json['canvasWidth'].toString());
    canvasHeight = double.parse(json['canvasHeight'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (canvas != null) {
      data['canvas'] = canvas!.toJson();
    }
    if (editor != null) {
      data['editor'] = editor!.toJson();
    }
    data['canvasWidth'] = canvasWidth;
    data['canvasHeight'] = canvasHeight;
    return data;
  }
}
