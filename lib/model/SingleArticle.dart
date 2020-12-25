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
    this.etat,
    this.telephone,
    this.dateAchat,
    this.price,
    this.city,
    this.title,
    this.description,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.categorie,
    this.image,
    this.usersPermissionsUser,
    this.singleArticleId,
  });

  List<Article2> articles;
  String id;
  String etat;
  String telephone;
  String dateAchat;
  int price;
  String city;
  String title;
  String description;
  DateTime publishedAt;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  Categorie categorie;
  ArticleImage image;
  UsersPermissionsUser usersPermissionsUser;
  String singleArticleId;

  factory SingleArticle.fromJson(Map<String, dynamic> json) => SingleArticle(
        articles: List<Article2>.from(
            json["articles"].map((x) => Article2.fromJson(x))),
        id: json["_id"],
        etat: json["etat"],
        telephone: json["telephone"],
        dateAchat: json["date_achat"],
        price: json["price"],
        city: json["city"],
        title: json["title"],
        description: json["description"],
        publishedAt: DateTime.parse(json["published_at"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        categorie: Categorie.fromJson(json["categorie"]),
        image: ArticleImage.fromJson(json["image"]),
        usersPermissionsUser:
            UsersPermissionsUser.fromJson(json["users_permissions_user"]),
        singleArticleId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
        "_id": id,
        "etat": etat,
        "telephone": telephone,
        "date_achat": dateAchat,
        "price": price,
        "city": city,
        "title": title,
        "description": description,
        "published_at": publishedAt.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "categorie": categorie.toJson(),
        "image": image.toJson(),
        "users_permissions_user": usersPermissionsUser.toJson(),
        "id": singleArticleId,
      };
}

class Article2 {
  Article2({
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
    this.dateAchat,
    this.usersPermissionsUser,
    this.articleId,
  });

  List<String> articles;
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
  String categorie;
  ArticleImage image;
  String dateAchat;
  String usersPermissionsUser;
  String articleId;

  factory Article2.fromJson(Map<String, dynamic> json) => Article2(
        articles: List<String>.from(json["articles"].map((x) => x)),
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
        categorie: json["categorie"],
        image: ArticleImage.fromJson(json["image"]),
        dateAchat: json["date_achat"],
        usersPermissionsUser: json["users_permissions_user"],
        articleId: json["id"],
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
        "categorie": categorie,
        "image": image.toJson(),
        "date_achat": dateAchat,
        "users_permissions_user": usersPermissionsUser,
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
  String ext;
  String mime;
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
        ext: json["ext"],
        mime: json["mime"],
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

class PurpleFormats {
  PurpleFormats({
    this.thumbnail,
  });

  Thumbnail thumbnail;

  factory PurpleFormats.fromJson(Map<String, dynamic> json) => PurpleFormats(
        thumbnail: Thumbnail.fromJson(json["thumbnail"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail.toJson(),
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
  String ext;
  String mime;
  int width;
  int height;
  double size;
  dynamic path;
  String url;
  ProviderMetadata providerMetadata;

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
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
  String ext;
  String mime;
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
        ext: json["ext"],
        mime: json["mime"],
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
        large: Thumbnail.fromJson(json["large"]),
        medium: Thumbnail.fromJson(json["medium"]),
        small: Thumbnail.fromJson(json["small"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail.toJson(),
        "large": large.toJson(),
        "medium": medium.toJson(),
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
  dynamic produit;
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
