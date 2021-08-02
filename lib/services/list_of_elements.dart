// To parse this JSON data, do
//
//     final listData = listDataFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ListData listDataFromJson(String str) => ListData.fromJson(json.decode(str));

String listDataToJson(ListData data) => json.encode(data.toJson());

class ListData {
  ListData({
    required this.data,
    required this.meta,
    required this.links,
  });

  final List<Datum> data;
  final ListDataMeta meta;
  final ListDataLinks links;

  factory ListData.fromJson(Map<String, dynamic> json) => ListData(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        meta: ListDataMeta.fromJson(json["meta"]),
        links: ListDataLinks.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
        "links": links.toJson(),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.type,
    required this.attributes,
  });

  final String id;
  final String type;
  final List<Attributes> attributes;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        type: json["type"],
        attributes: List<Attributes>.from(
            json["attributes"] ?? [].map((x) => Attributes.fromJson(x))),
/*         attributes: Attributes.fromJson(json["attributes"]), */
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "attributes": List<dynamic>.from(attributes.map((x) => x.toJson()))
/*         "attributes": attributes.toJson(), */
      };
}

class Attributes {
  Attributes({
    required this.createdAt,
    required this.updatedAt,
    required this.description,
    required this.titles,
    required this.canonicalTitle,
    required this.averageRating,
    required this.userCount,
    required this.favoritesCount,
    required this.startDate,
    required this.endDate,
    required this.popularityRank,
    required this.ratingRank,
    required this.ageRating,
    required this.ageRatingGuide,
    required this.subtype,
    required this.status,
    required this.posterImage,
    required this.episodeCount,
    required this.episodeLength,
    required this.totalLength,
    required this.youtubeVideoId,
    required this.showType,
  });

  final String createdAt;
  final String updatedAt;
  final String description;
  final List<Titles> titles;
  final String canonicalTitle;
  final String averageRating;
  final String userCount;
  final String favoritesCount;
  final String startDate;
  final String endDate;
  final String popularityRank;
  final String ratingRank;
  final String ageRating;
  final String ageRatingGuide;
  final String subtype;
  final String status;
  final List<PosterImage> posterImage;
  final String episodeCount;
  final String episodeLength;
  final String totalLength;
  final String youtubeVideoId;
  final String showType;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        createdAt: json["createdAt"] as String,
        updatedAt: json["updatedAt"] as String,
        description: json["description"] as String,
        titles: List<Titles>.from(
            json["titles"] ?? [].map((x) => Titles.fromJson(x))),
/*         titles: Titles.fromJson(json["titles"]), */
        canonicalTitle: json["canonicalTitle"] as String,
        averageRating: json["averageRating"] as String,
        /*        ratingFrequencies: Map.from(json["ratingFrequencies"])
            .map((k, v) => MapEntry<String, String>(k, v)), */
        userCount: json["userCount"] as String,
        favoritesCount: json["favoritesCount"] as String,
        startDate: json["startDate"] as String,
        endDate: json["endDate"] as String,
        popularityRank: json["popularityRank"] as String,
        ratingRank: json["ratingRank"] as String,
        ageRating: json["ageRating"] as String,
        ageRatingGuide: json["ageRatingGuide"] as String,
        subtype: json["subtype"] as String,
        status: json["status"] as String,
/*         posterImage: json["posterImage"] ?? '', */
        posterImage: List<PosterImage>.from(
                json["posterImage"] ?? [].map((x) => PosterImage.fromJson(x)))
            .toList(),
/*         coverImage: json["coverImage"] ?? '', */
        episodeCount: json["episodeCount"] as String,
        episodeLength: json["episodeLength"] as String,
        totalLength: json["totalLength"] as String,
        youtubeVideoId: json["youtubeVideoId"] as String,
        showType: json["showType"] as String,
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "description": description,
        "titles": List<String>.from(titles.map((x) => x.toJson())),
/*      "titles": titles.toJson(), */
        "canonicalTitle": canonicalTitle,
        "averageRating": averageRating,
/*         "ratingFrequencies": Map.from(ratingFrequencies)
            .map((k, v) => MapEntry<String, dynamic>(k, v)), */
        "userCount": userCount,
        "favoritesCount": favoritesCount,
        "startDate": startDate,
        "endDate": endDate,
        "popularityRank": popularityRank,
        "ratingRank": ratingRank,
        "ageRating": ageRating,
        "ageRatingGuide": ageRatingGuide,
        "subtype": subtype,
        "status": status,
        "posterImage": posterImage,
        "episodeCount": episodeCount,
        "episodeLength": episodeLength,
        "totalLength": totalLength,
        "showType": showType,
      };
}

class Titles {
  Titles({
    required this.en,
    required this.enJp,
    required this.jaJp,
    required this.enUs,
  });

  final String en;
  final String enJp;
  final String jaJp;
  final String enUs;

  factory Titles.fromJson(Map<String, dynamic> json) => Titles(
        en: json["en"],
        enJp: json["en_jp"],
        jaJp: json["ja_jp"],
        enUs: json["en_us"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "en_jp": enJp,
        "ja_jp": jaJp,
        "en_us": enUs,
      };
}

class CoverImage {
  CoverImage({
    required this.tiny,
    required this.small,
    required this.large,
    required this.original,
  });

  final String tiny;
  final String small;
  final String large;
  final String original;

  factory CoverImage.fromJson(Map<String, dynamic> json) => CoverImage(
        tiny: json["tiny"],
        small: json["small"],
        large: json["large"],
        original: json["original"],
      );

  Map<String, dynamic> toJson() => {
        "tiny": tiny,
        "small": small,
        "large": large,
        "original": original,
      };
}

class Dimensions {
  Dimensions({
    required this.tiny,
    required this.small,
    required this.large,
    required this.medium,
  });

  final String tiny;
  final String small;
  final String large;
  final String medium;

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        tiny: json["tiny"],
        small: json["small"],
        large: json["large"],
        medium: json["medium"],
      );

  Map<String, dynamic> toJson() => {
        "tiny": tiny,
        "small": small,
        "large": large,
        "medium": medium,
      };
}

class PosterImage {
  PosterImage({
    required this.tiny,
    required this.small,
    required this.medium,
    required this.large,
    required this.original,
  });

  final String tiny;
  final String small;
  final String medium;
  final String large;
  final String original;

  factory PosterImage.fromJson(Map<String, dynamic> json) => PosterImage(
        tiny: json["tiny"],
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
        original: json["original"],
      );

  Map<String, dynamic> toJson() => {
        "tiny": tiny,
        "small": small,
        "medium": medium,
        "large": large,
        "original": original,
      };
}

class ListDataLinks {
  ListDataLinks({
    required this.first,
    required this.next,
    required this.last,
  });

  final String first;
  final String next;
  final String last;

  factory ListDataLinks.fromJson(Map<String, dynamic> json) => ListDataLinks(
        first: json["first"],
        next: json["next"],
        last: json["last"],
      );

  Map<String, dynamic> toJson() => {
        "first": first,
        "next": next,
        "last": last,
      };
}

class ListDataMeta {
  ListDataMeta({
    required this.count,
  });

  final int count;

  factory ListDataMeta.fromJson(Map<String, dynamic> json) => ListDataMeta(
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
      };
}

/* class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
} */
