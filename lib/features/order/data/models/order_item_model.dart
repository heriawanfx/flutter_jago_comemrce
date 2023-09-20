// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class OrderItemModel {
  final int id;
  final int quantity;
  int? order_id;
  int? product_id;
  DateTime? created_at;
  DateTime? updated_at;
  OrderItemModel({
    required this.id,
    required this.quantity,
    this.product_id,
    this.order_id,
    this.created_at,
    this.updated_at,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'quantity': quantity,
      'order_id': order_id,
      'product_id': product_id,
      'created_at': created_at,
      'updated_at': updated_at,
    };
  }

  factory OrderItemModel.fromMap(Map<String, dynamic> map) {
    return OrderItemModel(
      id: map['id'].toInt() as int,
      quantity: map['quantity'].toInt() as int,
      order_id: map['order_id'].toInt() as int,
      product_id: map['product_id'].toInt() as int,
      created_at: DateTime.parse(map['created_at'] as String),
      updated_at: DateTime.parse(map['updated_at'] as String),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderItemModel.fromJson(String source) =>
      OrderItemModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
