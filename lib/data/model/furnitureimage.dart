import 'dart:convert';
import 'package:pr2/domain/entity/furnitureimage_entity.dart';

class FurnitureImage extends FurnitureImageEntity {
  late int id;
  final String imageSource;
  final int id_furniture;

  FurnitureImage({
    required this.id,
    required this.imageSource,
    required this.id_furniture,
  }) : super(
          id: id,
          imageSource: imageSource,
          id_furniture: id_furniture,
        );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      ' imageSource': imageSource,
      ' id_furniture': id_furniture,
    };
  }

  factory FurnitureImage.toFromMap(Map<String, dynamic> json) {
    return FurnitureImage(
      id: json['id'],
      imageSource: json[' imageSource'],
      id_furniture: json[' id_furniture'],
    );
  }
}
