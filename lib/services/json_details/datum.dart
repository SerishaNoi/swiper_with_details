import 'package:flutter/src/widgets/basic.dart';
import 'package:swiper_with_details/services/json_details/attributes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable(explicitToJson: true)
class Datum {
  final String? id;
  final String? type;
  final Attributes? attributes;

  const Datum({
    required this.id,
    required this.type,
    required this.attributes,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
  Map<String, dynamic> toJson() => _$DatumToJson(this);

  @override
  String toString() => 'Datum{id: $id, type: $type, attributes:$attributes}';
}
