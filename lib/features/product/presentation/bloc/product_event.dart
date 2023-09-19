// ignore_for_file: non_constant_identifier_names

part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  //Private constructor to make optional parameter works
  const ProductEvent._();

  const factory ProductEvent.started() = _Started;
  const factory ProductEvent.getProducts({String? category_id}) = _GetProducts;
  const factory ProductEvent.getProduct(String id) = _GetProduct;
}
