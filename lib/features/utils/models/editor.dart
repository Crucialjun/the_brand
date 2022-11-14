class Editor {
  String? frame;
  double? zoom;
  String? activeObjectId;

  Editor({this.frame, this.zoom, this.activeObjectId});

  Editor.fromJson(Map<String, dynamic> json) {
    frame = json['frame'];
    zoom = json['zoom'];
    activeObjectId = json['activeObjectId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['frame'] = frame;
    data['zoom'] = zoom;
    data['activeObjectId'] = activeObjectId;
    return data;
  }
}
