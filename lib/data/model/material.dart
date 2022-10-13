import 'dart:convert';
import 'package:pr2/domain/entity/material_entity.dart';

class Material extends MaterialEntity {
  late int id;
  final String materialType;

  Material({
    required this.id,
    required this.materialType,
  }) : super(
          id: id,
          materialType: materialType,
        );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'materialType': materialType,
    };
  }

  factory Material.toFromMap(Map<String, dynamic> json) {
    return Material(
      id: json['id'],
      materialType: json['materialType'],
    );
  }
}
