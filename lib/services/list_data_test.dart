class ListData {
  ListData({
    required this.data,
    required this.meta,
    required this.links,
  });

  List<Datum> data;
  ListDataMeta meta;
  ListDataLinks links;
}

class Datum {
  Datum({
    required this.id,
    required this.type,
    required this.links,
    required this.attributes,
    required this.relationships,
  });

  String id;
  TypeEnum type;
  DatumLinks links;
  Attributes attributes;
  Map<String, Relationship> relationships;
}

class Attributes {
  Attributes({
    required this.createdAt,
    required this.updatedAt,
    required this.slug,
    required this.synopsis,
    required this.description,
    required this.coverImageTopOffset,
    required this.titles,
    required this.canonicalTitle,
    required this.abbreviatedTitles,
    required this.averageRating,
    required this.ratingFrequencies,
    required this.userCount,
    required this.favoritesCount,
    required this.startDate,
    required this.endDate,
    required this.nextRelease,
    required this.popularityRank,
    required this.ratingRank,
    required this.ageRating,
    required this.ageRatingGuide,
    required this.subtype,
    required this.status,
    required this.tba,
    required this.posterImage,
    required this.coverImage,
    required this.episodeCount,
    required this.episodeLength,
    required this.totalLength,
    required this.youtubeVideoId,
    required this.showType,
    required this.nsfw,
  });

  DateTime createdAt;
  DateTime updatedAt;
  String slug;
  String synopsis;
  String description;
  int coverImageTopOffset;
  Titles titles;
  String canonicalTitle;
  List<String> abbreviatedTitles;
  String averageRating;
  Map<String, String> ratingFrequencies;
  int userCount;
  int favoritesCount;
  DateTime startDate;
  DateTime endDate;
  dynamic nextRelease;
  int popularityRank;
  int ratingRank;
  AgeRating ageRating;
  String ageRatingGuide;
  ShowTypeEnum subtype;
  Status status;
  String tba;
  PosterImage posterImage;
  CoverImage coverImage;
  int episodeCount;
  int episodeLength;
  int totalLength;
  String youtubeVideoId;
  ShowTypeEnum showType;
  bool nsfw;
}

enum AgeRating { R, PG }

class CoverImage {
  CoverImage({
    required this.tiny,
    required this.small,
    required this.large,
    required this.original,
    required this.meta,
  });

  String tiny;
  String small;
  String large;
  String original;
  CoverImageMeta meta;
}

class CoverImageMeta {
  CoverImageMeta({
    required this.dimensions,
  });

  Dimensions dimensions;
}

class Dimensions {
  Dimensions({
    required this.tiny,
    required this.small,
    required this.large,
    required this.medium,
  });

  Large tiny;
  Large small;
  Large large;
  Large medium;
}

class Large {
  Large({
    required this.width,
    required this.height,
  });

  int width;
  int height;
}

class PosterImage {
  PosterImage({
    required this.tiny,
    required this.small,
    required this.medium,
    required this.large,
    required this.original,
    required this.meta,
  });

  String tiny;
  String small;
  String medium;
  String large;
  String original;
  CoverImageMeta meta;
}

enum ShowTypeEnum { TV, MOVIE }

enum Status { FINISHED }

class Titles {
  Titles({
    required this.en,
    required this.enJp,
    required this.jaJp,
    required this.enUs,
  });

  String en;
  String enJp;
  String jaJp;
  String enUs;
}

class DatumLinks {
  DatumLinks({
    required this.self,
  });

  String self;
}

class Relationship {
  Relationship({
    required this.links,
  });

  RelationshipLinks links;
}

class RelationshipLinks {
  RelationshipLinks({
    required this.self,
    required this.related,
  });

  String self;
  String related;
}

enum TypeEnum { ANIME }

class ListDataLinks {
  ListDataLinks({
    required this.first,
    required this.next,
    required this.last,
  });

  String first;
  String next;
  String last;
}

class ListDataMeta {
  ListDataMeta({
    required this.count,
  });

  int count;
}
