import 'dart:convert';
import 'package:pr2/domain/entity/sizefurniture_entity.dart';

class SizeFurniture extends SizeFurnitureEntity {
  late int id;
  final double furnitureLength;
  final double furnitureWidth;
  final double furnitureHeight;

  SizeFurniture({
    required this.id,
    required this.furnitureLength,
    required this.furnitureWidth,
    required this.furnitureHeight,
  }) : super(
          id: id,
          furnitureLength: furnitureLength,
          furnitureWidth: furnitureWidth,
          furnitureHeight: furnitureHeight,
        );

  Map<String, dynamic> toMap() {
    return {
      ' furnitureLength': furnitureLength,
      ' furnitureWidth': furnitureWidth,
      ' furnitureHeight': furnitureHeight,
    };
  }

  factory SizeFurniture.toFromMap(Map<String, dynamic> json) {
    return SizeFurniture(
      id: json['id'],
      furnitureLength: json[' furnitureLength'],
      furnitureWidth: json[' furnitureWidth'],
      furnitureHeight: json[' furnitureHeight'],
    );
  }
}
