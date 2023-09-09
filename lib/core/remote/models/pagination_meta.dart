// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class PaginationMeta {
  final int current_page;
  final int from;
  final int last_page;
  final String path;
  final int per_page;
  final int to;
  final int total;
  PaginationMeta({
    required this.current_page,
    required this.from,
    required this.last_page,
    required this.path,
    required this.per_page,
    required this.to,
    required this.total,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current_page': current_page,
      'from': from,
      'last_page': last_page,
      'path': path,
      'per_page': per_page,
      'to': to,
      'total': total,
    };
  }

  factory PaginationMeta.fromMap(Map<String, dynamic> map) {
    return PaginationMeta(
      current_page: map['current_page'].toInt() as int,
      from: map['from'].toInt() as int,
      last_page: map['last_page'].toInt() as int,
      path: map['path'] as String,
      per_page: map['per_page'].toInt() as int,
      to: map['to'].toInt() as int,
      total: map['total'].toInt() as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaginationMeta.fromJson(String source) =>
      PaginationMeta.fromMap(json.decode(source) as Map<String, dynamic>);
}
