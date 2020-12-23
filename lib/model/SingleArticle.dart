// To parse this JSON data, do
//
//     final singleArticle = singleArticleFromJson(jsonString);

import 'dart:convert';

SingleArticle singleArticleFromJson(String str) =>
    SingleArticle.fromJson(json.decode(str));

String singleArticleToJson(SingleArticle data) => json.encode(data.toJson());

class SingleArticle {
  SingleArticle({
    this.articles,
    this.id,
    this.title,
    this.description,
    this.price,
    this.etat,
    this.city,
    this.telephone,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.categorie,
    this.image,
    this.singleArticleId,
  });

  List<dynamic> articles;
  String id;
  String title;
  String description;
  int price;
  String etat;
  String city;
  String telephone;
  DateTime publishedAt;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  Categorie categorie;
  Image2 image;
  String singleArticleId;

  factory SingleArticle.fromJson(Map<String, dynamic> json) => SingleArticle(
        articles: List<dynamic>.from(json["articles"].map((x) => x)),
        id: json["_id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        etat: json["etat"],
        city: json["city"],
        telephone: json["telephone"],
        publishedAt: DateTime.parse(json["published_at"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        categorie: Categorie.fromJson(json["categorie"]),
        image: Image2.fromJson(json["image"]),
        singleArticleId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "articles": List<dynamic>.from(articles.map((x) => x)),
        "_id": id,
        "title": title,
        "description": description,
        "price": price,
        "etat": etat,
        "city": city,
        "telephone": telephone,
        "published_at": publishedAt.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "categorie": categorie.toJson(),
        "image": image.toJson(),
        "id": singleArticleId,
      };
}

class Categorie {
  Categorie({
    this.id,
    this.name,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.image,
    this.categorieId,
  });

  String id;
  String name;
  DateTime publishedAt;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  Image2 image;
  String categorieId;

  factory Categorie.fromJson(Map<String, dynamic> json) => Categorie(
        id: json["_id"],
        name: json["name"],
        publishedAt: DateTime.parse(json["published_at"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        image: Image2.fromJson(json["image"]),
        categorieId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "published_at": publishedAt.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "image": image.toJson(),
        "id": categorieId,
      };
}

class Image2 {
  Image2({
    this.id,
    this.name,
    this.alternativeText,
    this.caption,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.width,
    this.height,
    this.url,
    this.providerMetadata,
    this.formats,
    this.provider,
    this.related,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.imageId,
  });

  String id;
  String name;
  String alternativeText;
  String caption;
  String hash;
  String ext;
  String mime;
  double size;
  int width;
  int height;
  String url;
  ProviderMetadata providerMetadata;
  Formats formats;
  String provider;
  List<String> related;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  String imageId;

  factory Image2.fromJson(Map<String, dynamic> json) => Image2(
        id: json["_id"],
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"].toDouble(),
        width: json["width"],
        height: json["height"],
        url: json["url"],
        providerMetadata: ProviderMetadata.fromJson(json["provider_metadata"]),
        formats: Formats.fromJson(json["formats"]),
        provider: json["provider"],
        related: List<String>.from(json["related"].map((x) => x)),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        imageId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "width": width,
        "height": height,
        "url": url,
        "provider_metadata": providerMetadata.toJson(),
        "formats": formats.toJson(),
        "provider": provider,
        "related": List<dynamic>.from(related.map((x) => x)),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "id": imageId,
      };
}

class Formats {
  Formats({
    this.thumbnail,
    this.small,
  });

  Small thumbnail;
  Small small;

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: Small.fromJson(json["thumbnail"]),
        small: Small.fromJson(json["small"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail.toJson(),
        "small": small.toJson(),
      };
}

class Small {
  Small({
    this.name,
    this.hash,
    this.ext,
    this.mime,
    this.width,
    this.height,
    this.size,
    this.path,
    this.url,
    this.providerMetadata,
  });

  String name;
  String hash;
  String ext;
  String mime;
  int width;
  int height;
  double size;
  dynamic path;
  String url;
  ProviderMetadata providerMetadata;

  factory Small.fromJson(Map<String, dynamic> json) => Small(
        name: json["name"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        width: json["width"],
        height: json["height"],
        size: json["size"].toDouble(),
        path: json["path"],
        url: json["url"],
        providerMetadata: ProviderMetadata.fromJson(json["provider_metadata"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "width": width,
        "height": height,
        "size": size,
        "path": path,
        "url": url,
        "provider_metadata": providerMetadata.toJson(),
      };
}

class ProviderMetadata {
  ProviderMetadata({
    this.publicId,
    this.resourceType,
  });

  String publicId;
  String resourceType;

  factory ProviderMetadata.fromJson(Map<String, dynamic> json) =>
      ProviderMetadata(
        publicId: json["public_id"],
        resourceType: json["resource_type"],
      );

  Map<String, dynamic> toJson() => {
        "public_id": publicId,
        "resource_type": resourceType,
      };
}
