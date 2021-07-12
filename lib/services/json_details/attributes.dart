import 'package:json_annotation/json_annotation.dart';
import 'package:swiper_with_details/services/json_details/posterImage.dart';
import 'package:swiper_with_details/services/json_details/titles.dart';

part 'attributes.g.dart';

@JsonSerializable(explicitToJson: true)
class Attributes {
  final String? createdAt;
  final String? updatedAt;
  final String? description;
  final Titles? titles;
  final String? averageRating;
  final String? startDate;
  final String? endDate;
  final String? ageRatingGuide;
  final String? subtype;
  final String? status;
  final PosterImage? posterImage;
  final int? episodeCount;
  final String? showType;

  const Attributes(
      {required this.createdAt,
      required this.updatedAt,
      required this.description,
      required this.titles,
      required this.averageRating,
      required this.startDate,
      required this.endDate,
      required this.ageRatingGuide,
      required this.subtype,
      required this.status,
      required this.posterImage,
      required this.episodeCount,
      required this.showType});

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  @override
  String toString() =>
      'Attributes{createdAt: $createdAt, updatedAt: $updatedAt, description:$description, titles:$titles, averageRating:$averageRating, startDate:$startDate, endDate:$endDate, ageRatingGuide:$ageRatingGuide, subtype:$subtype, status:$status, posterImage:$posterImage, episodeCount:$episodeCount, showType:$showType}';
}
