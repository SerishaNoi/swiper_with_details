// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posterImage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PosterImage _$PosterImageFromJson(Map<String, dynamic> json) {
  return PosterImage(
    tiny: json['tiny'] as String?,
    small: json['small'] as String?,
    medium: json['medium'] as String?,
    large: json['large'] as String?,
    original: json['original'] as String?,
  );
}

Map<String, dynamic> _$PosterImageToJson(PosterImage instance) =>
    <String, dynamic>{
      'tiny': instance.tiny,
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
      'original': instance.original,
    };
