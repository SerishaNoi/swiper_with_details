import 'package:json_annotation/json_annotation.dart';

part 'titles.g.dart';

@JsonSerializable()
class Titles {
  final String? en;
  final String? enjp;
  final String? jajp;

  const Titles({
    required this.en,
    required this.enjp,
    required this.jajp,
  });

  factory Titles.fromJson(Map<String, dynamic> json) => _$TitlesFromJson(json);

  Map<String, dynamic> toJson() => _$TitlesToJson(this);
}
