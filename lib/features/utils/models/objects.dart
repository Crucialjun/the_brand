import 'package:the_brand/features/utils/models/data.dart';
import 'package:the_brand/features/utils/models/filters.dart';

class Objects {
  String? type;
  String? version;
  String? originX;
  String? originY;
  double? left;
  double? top;
  double? width;
  double? height;
  String? fill;
  String? stroke;
  double? strokeWidth;
  String? strokeDashArray;
  String? strokeLineCap;
  int? strokeDashOffset;
  String? strokeLineJoin;
  bool? strokeUniform;
  int? strokeMiterLimit;
  double? scaleX;
  double? scaleY;
  double? angle;
  bool? flipX;
  bool? flipY;
  double? opacity;
  String? shadow;
  bool? visible;
  String? backgroundColor;
  String? fillRule;
  String? paintFirst;
  String? globalCompositeOperation;
  int? skewX;
  int? skewY;
  int? cropX;
  int? cropY;
  bool? selectable;
  bool? evented;
  bool? lockMovementX;
  bool? lockMovementY;
  bool? lockRotation;
  bool? lockScalingX;
  bool? lockScalingY;
  bool? lockUniScaling;
  bool? hasControls;
  bool? hasBorders;
  bool? hasRotatingPoint;
  String? crossOrigin;
  String? name;
  Data? data;
  String? src;
  List<Filters>? filters;
  String? fontFamily;
  int? fontWeight;
  int? fontSize;
  String? text;
  bool? underline;
  bool? overline;
  bool? linethrough;
  String? textAlign;
  String? fontStyle;
  double? lineHeight;
  String? textBackgroundColor;
  int? charSpacing;
  List<void>? styles;
  String? direction;
  String? path;
  int? pathStartOffset;
  String? pathSide;
  String? pathAlign;

  Objects(
      {this.type,
      this.version,
      this.originX,
      this.originY,
      this.left,
      this.top,
      this.width,
      this.height,
      this.fill,
      this.stroke,
      this.strokeWidth,
      this.strokeDashArray,
      this.strokeLineCap,
      this.strokeDashOffset,
      this.strokeLineJoin,
      this.strokeUniform,
      this.strokeMiterLimit,
      this.scaleX,
      this.scaleY,
      this.angle,
      this.flipX,
      this.flipY,
      this.opacity,
      this.shadow,
      this.visible,
      this.backgroundColor,
      this.fillRule,
      this.paintFirst,
      this.globalCompositeOperation,
      this.skewX,
      this.skewY,
      this.cropX,
      this.cropY,
      this.selectable,
      this.evented,
      this.lockMovementX,
      this.lockMovementY,
      this.lockRotation,
      this.lockScalingX,
      this.lockScalingY,
      this.lockUniScaling,
      this.hasControls,
      this.hasBorders,
      this.hasRotatingPoint,
      this.crossOrigin,
      this.name,
      this.data,
      this.src,
      this.filters,
      this.fontFamily,
      this.fontWeight,
      this.fontSize,
      this.text,
      this.underline,
      this.overline,
      this.linethrough,
      this.textAlign,
      this.fontStyle,
      this.lineHeight,
      this.textBackgroundColor,
      this.charSpacing,
      this.styles,
      this.direction,
      this.path,
      this.pathStartOffset,
      this.pathSide,
      this.pathAlign});

  Objects.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    version = json['version'];
    originX = json['originX'];
    originY = json['originY'];
    left = json['left'];
    top = json['top'].toDouble();
    width = json['width'].toDouble();
    height = json['height'].toDouble();
    fill = json['fill'];
    stroke = json['stroke'];
    strokeWidth = json['strokeWidth'].toDouble();
    strokeDashArray = json['strokeDashArray'];
    strokeLineCap = json['strokeLineCap'];
    strokeDashOffset = json['strokeDashOffset'];
    strokeLineJoin = json['strokeLineJoin'];
    strokeUniform = json['strokeUniform'];
    strokeMiterLimit = json['strokeMiterLimit'];
    scaleX = json['scaleX'].toDouble();
    scaleY = json['scaleY'].toDouble();
    angle = json['angle'].toDouble();
    flipX = json['flipX'];
    flipY = json['flipY'];
    opacity = json['opacity'].toDouble();
    shadow = json['shadow'];
    visible = json['visible'];
    backgroundColor = json['backgroundColor'];
    fillRule = json['fillRule'];
    paintFirst = json['paintFirst'];
    globalCompositeOperation = json['globalCompositeOperation'];
    skewX = json['skewX'];
    skewY = json['skewY'];
    cropX = json['cropX'];
    cropY = json['cropY'];
    selectable = json['selectable'];
    evented = json['evented'];
    lockMovementX = json['lockMovementX'];
    lockMovementY = json['lockMovementY'];
    lockRotation = json['lockRotation'];
    lockScalingX = json['lockScalingX'];
    lockScalingY = json['lockScalingY'];
    lockUniScaling = json['lockUniScaling'];
    hasControls = json['hasControls'];
    hasBorders = json['hasBorders'];
    hasRotatingPoint = json['hasRotatingPoint'];
    crossOrigin = json['crossOrigin'];
    name = json['name'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    src = json['src'];
    if (json['filters'] != null) {
      filters = <Filters>[];
      json['filters'].forEach((v) {
        filters!.add(Filters.fromJson(v));
      });
    }
    fontFamily = json['fontFamily'];
    fontWeight = json['fontWeight'];
    fontSize = json['fontSize'];
    text = json['text'];
    underline = json['underline'];
    overline = json['overline'];
    linethrough = json['linethrough'];
    textAlign = json['textAlign'];
    fontStyle = json['fontStyle'];
    lineHeight = json['lineHeight']?.toDouble() ?? 0.0;
    textBackgroundColor = json['textBackgroundColor'];
    charSpacing = json['charSpacing'];
    styles = json['styles'];
    direction = json['direction'];
    path = json['path'];
    pathStartOffset = json['pathStartOffset'];
    pathSide = json['pathSide'];
    pathAlign = json['pathAlign'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['version'] = version;
    data['originX'] = originX;
    data['originY'] = originY;
    data['left'] = left;
    data['top'] = top;
    data['width'] = width;
    data['height'] = height;
    data['fill'] = fill;
    data['stroke'] = stroke;
    data['strokeWidth'] = strokeWidth;
    data['strokeDashArray'] = strokeDashArray;
    data['strokeLineCap'] = strokeLineCap;
    data['strokeDashOffset'] = strokeDashOffset;
    data['strokeLineJoin'] = strokeLineJoin;
    data['strokeUniform'] = strokeUniform;
    data['strokeMiterLimit'] = strokeMiterLimit;
    data['scaleX'] = scaleX;
    data['scaleY'] = scaleY;
    data['angle'] = angle;
    data['flipX'] = flipX;
    data['flipY'] = flipY;
    data['opacity'] = opacity;
    data['shadow'] = shadow;
    data['visible'] = visible;
    data['backgroundColor'] = backgroundColor;
    data['fillRule'] = fillRule;
    data['paintFirst'] = paintFirst;
    data['globalCompositeOperation'] = globalCompositeOperation;
    data['skewX'] = skewX;
    data['skewY'] = skewY;
    data['cropX'] = cropX;
    data['cropY'] = cropY;
    data['selectable'] = selectable;
    data['evented'] = evented;
    data['lockMovementX'] = lockMovementX;
    data['lockMovementY'] = lockMovementY;
    data['lockRotation'] = lockRotation;
    data['lockScalingX'] = lockScalingX;
    data['lockScalingY'] = lockScalingY;
    data['lockUniScaling'] = lockUniScaling;
    data['hasControls'] = hasControls;
    data['hasBorders'] = hasBorders;
    data['hasRotatingPoint'] = hasRotatingPoint;
    data['crossOrigin'] = crossOrigin;
    data['name'] = name;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['src'] = src;
    if (filters != null) {
      data['filters'] = filters!.map((v) => v.toJson()).toList();
    }
    data['fontFamily'] = fontFamily;
    data['fontWeight'] = fontWeight;
    data['fontSize'] = fontSize;
    data['text'] = text;
    data['underline'] = underline;
    data['overline'] = overline;
    data['linethrough'] = linethrough;
    data['textAlign'] = textAlign;
    data['fontStyle'] = fontStyle;
    data['lineHeight'] = lineHeight;
    data['textBackgroundColor'] = textBackgroundColor;
    data['charSpacing'] = charSpacing;
    data['styles'] = styles;
    data['direction'] = direction;
    data['path'] = path;
    data['pathStartOffset'] = pathStartOffset;
    data['pathSide'] = pathSide;
    data['pathAlign'] = pathAlign;
    return data;
  }
}
