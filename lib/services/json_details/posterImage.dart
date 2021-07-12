import 'package:json_annotation/json_annotation.dart';

part 'posterImage.g.dart';

@JsonSerializable()
class PosterImage {
  final String? tiny;
  final String? small;
  final String? medium;
  final String? large;
  final String? original;

  const PosterImage(
      {required this.tiny,
      required this.small,
      required this.medium,
      required this.large,
      required this.original});

  factory PosterImage.fromJson(Map<String, dynamic> json) =>
      _$PosterImageFromJson(json);

  Map<String, dynamic> toJson() => _$PosterImageToJson(this);
}
