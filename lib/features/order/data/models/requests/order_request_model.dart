// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import '../order_item_model.dart';

class OrderRequestModel {
  final List<OrderItemModel> items;
  final double total_price;
  final String delivery_address;
  final int seller_id;
  OrderRequestModel({
    required this.items,
    required this.total_price,
    required this.delivery_address,
    required this.seller_id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items.map((x) => x.toMap()).toList(),
      'total_price': total_price,
      'delivery_address': delivery_address,
      'seller_id': seller_id,
    };
  }

  factory OrderRequestModel.fromMap(Map<String, dynamic> map) {
    return OrderRequestModel(
      items: List.from(
        (map['items'] as List).map(
          (x) => OrderItemModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      total_price: map['total_price'].toInt() as double,
      delivery_address: map['delivery_address'] as String,
      seller_id: map['seller_id'].toInt() as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderRequestModel.fromJson(String source) =>
      OrderRequestModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
