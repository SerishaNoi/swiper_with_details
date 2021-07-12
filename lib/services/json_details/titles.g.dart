// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'titles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Titles _$TitlesFromJson(Map<String, dynamic> json) {
  return Titles(
    en: json['en'] as String?,
    enjp: json['en_jp'] as String?,
    jajp: json['ja_jp'] as String?,
  );
}

Map<String, dynamic> _$TitlesToJson(Titles instance) => <String, dynamic>{
      'en': instance.en,
      'en_jp': instance.enjp,
      'ja_jp': instance.jajp,
    };
