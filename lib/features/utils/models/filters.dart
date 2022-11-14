class Filters {
  String? type;
  bool? opaque;
  List<int>? matrix;

  Filters({this.type, this.opaque, this.matrix});

  Filters.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    opaque = json['opaque'];
    matrix = json['matrix'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['opaque'] = opaque;
    data['matrix'] = matrix;
    return data;
  }
}
