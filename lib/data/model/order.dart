import 'dart:convert';
import 'package:pr2/domain/entity/order_entity.dart';

class Order extends OrderEntity {
  late int id;
  final int orderNumber;
  final String orderDate;
  final double Summary;
  final int id_furniture;
  final int id_users;

  Order({
    required this.id,
    required this.orderNumber,
    required this.orderDate,
    required this.Summary,
    required this.id_furniture,
    required this.id_users,
  }) : super(
          id: id,
          orderNumber: orderNumber,
          orderDate: orderDate,
          Summary: Summary,
          id_furniture: id_furniture,
          id_users: id_users,
        );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      ' orderNumber': orderNumber,
      ' orderDate': orderDate,
      ' Summary': Summary,
      ' id_furniture': id_furniture,
      ' id_users': id_users,
    };
  }

  factory Order.toFromMap(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      orderNumber: json[' orderNumber'],
      orderDate: json[' orderDate'],
      Summary: json[' Summary'],
      id_furniture: json[' id_furniture'],
      id_users: json[' id_users'],
    );
  }
}
