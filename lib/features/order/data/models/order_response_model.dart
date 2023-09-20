// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import '../../../../core/auth/data/models/user_model.dart';
import 'order_item_model.dart';

class OrderResponseModel {
  final int user_id;
  final int seller_id;
  final int number;
  final String? delivery_address;
  final String total_price;
  final DateTime updated_at;
  final DateTime created_at;
  final int id;
  final String payment_url;
  final UserModel user;
  final List<OrderItemModel> order_items;
  OrderResponseModel({
    required this.user_id,
    required this.seller_id,
    required this.number,
    required this.delivery_address,
    required this.total_price,
    required this.updated_at,
    required this.created_at,
    required this.id,
    required this.payment_url,
    required this.user,
    required this.order_items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': user_id,
      'seller_id': seller_id,
      'number': number,
      'delivery_address': delivery_address,
      'total_price': total_price,
      'updated_at': updated_at,
      'created_at': created_at,
      'id': id,
      'payment_url': payment_url,
      'user': user.toMap(),
      'order_items': order_items.map((x) => x.toMap()).toList(),
    };
  }

  factory OrderResponseModel.fromMap(Map<String, dynamic> map) {
    return OrderResponseModel(
      user_id: map['user_id'].toInt() as int,
      seller_id: map['seller_id'].toInt() as int,
      number: map['number'].toInt() as int,
      delivery_address: map['delivery_address'] as String?,
      total_price: map['total_price'] as String,
      updated_at: DateTime.parse(map['updated_at'] as String),
      created_at: DateTime.parse(map['created_at'] as String),
      id: map['id'].toInt() as int,
      payment_url: map['payment_url'] as String,
      user: UserModel.fromMap(map['user'] as Map<String, dynamic>),
      order_items: List.from(
        (map['order_items'] as List).map(
          (x) => OrderItemModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderResponseModel.fromJson(String source) =>
      OrderResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
