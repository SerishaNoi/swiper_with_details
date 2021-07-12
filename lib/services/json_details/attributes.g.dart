// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return Attributes(
    createdAt: json['createdAt'] as String?,
    updatedAt: json['updatedAt'] as String?,
    description: json['description'] as String?,
    titles: json['titles'] == null
        ? null
        : Titles.fromJson(json['titles'] as Map<String, dynamic>),
    averageRating: json['averageRating'] as String?,
    startDate: json['startDate'] as String?,
    endDate: json['endDate'] as String?,
    ageRatingGuide: json['ageRatingGuide'] as String?,
    subtype: json['subtype'] as String?,
    status: json['status'] as String?,
    posterImage: json['posterImage'] == null
        ? null
        : PosterImage.fromJson(json['posterImage'] as Map<String, dynamic>),
    episodeCount: json['episodeCount'] as int?,
    showType: json['showType'] as String?,
  );
}

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'description': instance.description,
      'titles': instance.titles?.toJson(),
      'averageRating': instance.averageRating,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'ageRatingGuide': instance.ageRatingGuide,
      'subtype': instance.subtype,
      'status': instance.status,
      'posterImage': instance.posterImage?.toJson(),
      'episodeCount': instance.episodeCount,
      'showType': instance.showType,
    };
