// To parse this JSON data, do
//
//     final bannerImage = bannerImageFromJson(jsonString);

import 'dart:convert';

List<BannerImage> bannerImageFromJson(String str) => List<BannerImage>.from(json.decode(str).map((x) => BannerImage.fromJson(x)));

String bannerImageToJson(List<BannerImage> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BannerImage {
  BannerImage({
    required this.id,
    required this.filename,
    required this.v,
  });

  String id;
  String filename;
  int v;

  factory BannerImage.fromJson(Map<String, dynamic> json) => BannerImage(
    id: json["_id"],
    filename: json["filename"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "filename": filename,
    "__v": v,
  };
}
