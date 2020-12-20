// To parse this JSON data, do
//
//     final article = articleFromJson(jsonString);

import 'dart:convert';

List<Article> articleFromJson(String str) =>
    List<Article>.from(json.decode(str).map((x) => Article.fromJson(x)));

String articleToJson(List<Article> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Article {
  Article({
    this.articles,
    this.id,
    this.title,
    this.description,
    this.dateAchat,
    this.datePublished,
    this.price,
    this.etat,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.image,
    this.categorie,
    this.usersPermissionsUsers,
    this.articleId,
  });

  List<ArticleElement> articles;
  String id;
  String title;
  String description;
  String dateAchat;
  String datePublished;
  int price;
  String etat;
  DateTime publishedAt;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  ArticleImage image;
  Categorie categorie;
  List<UsersPermissionsUser> usersPermissionsUsers;
  String articleId;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        articles: List<ArticleElement>.from(
            json["articles"].map((x) => ArticleElement.fromJson(x))),
        id: json["_id"],
        title: json["title"],
        description: json["description"],
        dateAchat: json["date_achat"],
        datePublished: json["date_published"],
        price: json["price"],
        etat: json["etat"],
        publishedAt: DateTime.parse(json["published_at"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        image: ArticleImage.fromJson(json["image"]),
        categorie: json["categorie"] == null
            ? null
            : Categorie.fromJson(json["categorie"]),
        usersPermissionsUsers: List<UsersPermissionsUser>.from(
            json["users_permissions_users"]
                .map((x) => UsersPermissionsUser.fromJson(x))),
        articleId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
        "_id": id,
        "title": title,
        "description": description,
        "date_achat": dateAchat,
        "date_published": datePublished,
        "price": price,
        "etat": etat,
        "published_at": publishedAt.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "image": image.toJson(),
        "categorie": categorie == null ? null : categorie.toJson(),
        "users_permissions_users":
            List<dynamic>.from(usersPermissionsUsers.map((x) => x.toJson())),
        "id": articleId,
      };
}

class ArticleElement {
  ArticleElement({
    this.articles,
    this.id,
    this.title,
    this.description,
    this.dateAchat,
    this.datePublished,
    this.price,
    this.etat,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.image,
    this.categorie,
    this.articleId,
  });

  List<String> articles;
  String id;
  String title;
  String description;
  String dateAchat;
  String datePublished;
  int price;
  String etat;
  DateTime publishedAt;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  ArticleImage image;
  String categorie;
  String articleId;

  factory ArticleElement.fromJson(Map<String, dynamic> json) => ArticleElement(
        articles: List<String>.from(json["articles"].map((x) => x)),
        id: json["_id"],
        title: json["title"],
        description: json["description"],
        dateAchat: json["date_achat"],
        datePublished: json["date_published"],
        price: json["price"],
        etat: json["etat"],
        publishedAt: DateTime.parse(json["published_at"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        image: ArticleImage.fromJson(json["image"]),
        categorie: json["categorie"],
        articleId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "articles": List<dynamic>.from(articles.map((x) => x)),
        "_id": id,
        "title": title,
        "description": description,
        "date_achat": dateAchat,
        "date_published": datePublished,
        "price": price,
        "etat": etat,
        "published_at": publishedAt.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "image": image.toJson(),
        "categorie": categorie,
        "id": articleId,
      };
}

class ArticleImage {
  ArticleImage({
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
  Ext ext;
  Mime mime;
  double size;
  int width;
  int height;
  String url;
  ProviderMetadata providerMetadata;
  PurpleFormats formats;
  String provider;
  List<String> related;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  String imageId;

  factory ArticleImage.fromJson(Map<String, dynamic> json) => ArticleImage(
        id: json["_id"],
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        hash: json["hash"],
        ext: extValues.map[json["ext"]],
        mime: mimeValues.map[json["mime"]],
        size: json["size"].toDouble(),
        width: json["width"],
        height: json["height"],
        url: json["url"],
        providerMetadata: ProviderMetadata.fromJson(json["provider_metadata"]),
        formats: PurpleFormats.fromJson(json["formats"]),
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
        "ext": extValues.reverse[ext],
        "mime": mimeValues.reverse[mime],
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

enum Ext { JPG, JPEG, EMPTY }

final extValues =
    EnumValues({"": Ext.EMPTY, ".jpeg": Ext.JPEG, ".jpg": Ext.JPG});

class PurpleFormats {
  PurpleFormats({
    this.thumbnail,
    this.small,
  });

  Thumbnail thumbnail;
  Thumbnail small;

  factory PurpleFormats.fromJson(Map<String, dynamic> json) => PurpleFormats(
        thumbnail: Thumbnail.fromJson(json["thumbnail"]),
        small: json["small"] == null ? null : Thumbnail.fromJson(json["small"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail.toJson(),
        "small": small == null ? null : small.toJson(),
      };
}

class Thumbnail {
  Thumbnail({
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
  Ext ext;
  Mime mime;
  int width;
  int height;
  double size;
  dynamic path;
  String url;
  ProviderMetadata providerMetadata;

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        name: json["name"],
        hash: json["hash"],
        ext: extValues.map[json["ext"]],
        mime: mimeValues.map[json["mime"]],
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
        "ext": extValues.reverse[ext],
        "mime": mimeValues.reverse[mime],
        "width": width,
        "height": height,
        "size": size,
        "path": path,
        "url": url,
        "provider_metadata": providerMetadata.toJson(),
      };
}

enum Mime { IMAGE_JPEG }

final mimeValues = EnumValues({"image/jpeg": Mime.IMAGE_JPEG});

class ProviderMetadata {
  ProviderMetadata({
    this.publicId,
    this.resourceType,
  });

  String publicId;
  ResourceType resourceType;

  factory ProviderMetadata.fromJson(Map<String, dynamic> json) =>
      ProviderMetadata(
        publicId: json["public_id"],
        resourceType: resourceTypeValues.map[json["resource_type"]],
      );

  Map<String, dynamic> toJson() => {
        "public_id": publicId,
        "resource_type": resourceTypeValues.reverse[resourceType],
      };
}

enum ResourceType { IMAGE }

final resourceTypeValues = EnumValues({"image": ResourceType.IMAGE});

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
  CategorieImage image;
  String categorieId;

  factory Categorie.fromJson(Map<String, dynamic> json) => Categorie(
        id: json["_id"],
        name: json["name"],
        publishedAt: DateTime.parse(json["published_at"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        image: CategorieImage.fromJson(json["image"]),
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

class CategorieImage {
  CategorieImage({
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
  Ext ext;
  Mime mime;
  double size;
  int width;
  int height;
  String url;
  ProviderMetadata providerMetadata;
  FluffyFormats formats;
  String provider;
  List<dynamic> related;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  String imageId;

  factory CategorieImage.fromJson(Map<String, dynamic> json) => CategorieImage(
        id: json["_id"],
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        hash: json["hash"],
        ext: extValues.map[json["ext"]],
        mime: mimeValues.map[json["mime"]],
        size: json["size"].toDouble(),
        width: json["width"],
        height: json["height"],
        url: json["url"],
        providerMetadata: ProviderMetadata.fromJson(json["provider_metadata"]),
        formats: FluffyFormats.fromJson(json["formats"]),
        provider: json["provider"],
        related: List<dynamic>.from(json["related"].map((x) => x)),
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
        "ext": extValues.reverse[ext],
        "mime": mimeValues.reverse[mime],
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

class FluffyFormats {
  FluffyFormats({
    this.thumbnail,
    this.large,
    this.medium,
    this.small,
  });

  Thumbnail thumbnail;
  Thumbnail large;
  Thumbnail medium;
  Thumbnail small;

  factory FluffyFormats.fromJson(Map<String, dynamic> json) => FluffyFormats(
        thumbnail: Thumbnail.fromJson(json["thumbnail"]),
        large: json["large"] == null ? null : Thumbnail.fromJson(json["large"]),
        medium:
            json["medium"] == null ? null : Thumbnail.fromJson(json["medium"]),
        small: Thumbnail.fromJson(json["small"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail.toJson(),
        "large": large == null ? null : large.toJson(),
        "medium": medium == null ? null : medium.toJson(),
        "small": small.toJson(),
      };
}

class UsersPermissionsUser {
  UsersPermissionsUser({
    this.confirmed,
    this.blocked,
    this.id,
    this.username,
    this.email,
    this.provider,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.role,
    this.produit,
    this.usersPermissionsUserId,
  });

  bool confirmed;
  bool blocked;
  String id;
  String username;
  String email;
  String provider;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  String role;
  String produit;
  String usersPermissionsUserId;

  factory UsersPermissionsUser.fromJson(Map<String, dynamic> json) =>
      UsersPermissionsUser(
        confirmed: json["confirmed"],
        blocked: json["blocked"],
        id: json["_id"],
        username: json["username"],
        email: json["email"],
        provider: json["provider"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        role: json["role"],
        produit: json["produit"],
        usersPermissionsUserId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "confirmed": confirmed,
        "blocked": blocked,
        "_id": id,
        "username": username,
        "email": email,
        "provider": provider,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "role": role,
        "produit": produit,
        "id": usersPermissionsUserId,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
