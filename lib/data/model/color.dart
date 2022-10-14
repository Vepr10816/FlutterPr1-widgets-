import 'dart:convert';
import 'package:pr2/domain/entity/color_entity.dart';

class Color extends ColorEntity {
  late int id;
  final String colorName;

  Color({
    required this.id,
    required this.colorName,
  }) : super(
          id: id,
          colorName: colorName,
        );

  Map<String, dynamic> toMap() {
    return {
      'colorName': colorName,
    };
  }

  factory Color.toFromMap(Map<String, dynamic> json) {
    return Color(
      id: json['id'],
      colorName: json['colorName'],
    );
  }
}
