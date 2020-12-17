import 'dart:convert';

List<Articles> articlesFromJson(String str) =>
    List<Articles>.from(json.decode(str).map((x) => Articles.fromJson(x)));

String articlesToJson(List<Articles> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Articles {
  Articles({
    this.id,
    this.titile,
    this.description,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.articleId,
  });

  String id;
  String titile;
  String description;
  DateTime publishedAt;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  String articleId;

  factory Articles.fromJson(Map<String, dynamic> json) => Articles(
        id: json["_id"],
        titile: json["titile"],
        description: json["description"],
        publishedAt: DateTime.parse(json["published_at"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        articleId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "titile": titile,
        "description": description,
        "published_at": publishedAt.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "id": articleId,
      };
}
