import 'dart:convert';
import 'package:pr2/domain/entity/furniture_entity.dart';

class Furniture extends FurnitureEntity {
  late int id;
  final String dateDeliver;
  final double purchasePrice;
  final int id_characteristics;
  final int id_material;
  final int id_color;

  Furniture({
    required this.id,
    required this.dateDeliver,
    required this.purchasePrice,
    required this.id_characteristics,
    required this.id_material,
    required this.id_color,
  }) : super(
          id: id,
          dateDeliver: dateDeliver,
          purchasePrice: purchasePrice,
          id_characteristics: id_characteristics,
          id_material: id_material,
          id_color: id_color,
        );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      ' dateDeliver': dateDeliver,
      ' purchasePrice': purchasePrice,
      ' id_characteristics': id_characteristics,
      ' id_material': id_material,
      ' id_color': id_color,
    };
  }

  factory Furniture.toFromMap(Map<String, dynamic> json) {
    return Furniture(
      id: json['id'],
      dateDeliver: json[' dateDeliver'],
      purchasePrice: json[' purchasePrice'],
      id_characteristics: json[' id_characteristics'],
      id_material: json[' id_material'],
      id_color: json[' id_color'],
    );
  }
}
