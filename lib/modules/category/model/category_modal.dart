

import 'dart:convert';

List<CategoryModal> categoryModalFromJson(String str) => List<CategoryModal>.from(json.decode(str).map((x) => CategoryModal.fromJson(x)));

String categoryModalToJson(List<CategoryModal> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
class  CategoryModal{
  String? sId;
  String? cateName;
  String? desc;
  String? filename;
  int? iV;

  CategoryModal({this.sId, this.cateName, this.desc, this.filename, this.iV});

  CategoryModal.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    cateName = json['CateName'];
    desc = json['desc'];
    filename = json['filename'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['CateName'] = this.cateName;
    data['desc'] = this.desc;
    data['filename'] = this.filename;
    data['__v'] = this.iV;
    return data;
  }
}
/*class CategoryModal {
  CategoryModal({
    this.id,
    this.cateName,
    this.desc,
    this.v,
  });

  String? id;
  String? cateName;
  String? desc;
  int? v;

  factory CategoryModal.fromJson(Map<String, dynamic> json) => CategoryModal(
    id: json["_id"],
    cateName: json["CateName"],
    desc: json["desc"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "CateName": cateName,
    "desc": desc,
    "__v": v,
  };
}*/
