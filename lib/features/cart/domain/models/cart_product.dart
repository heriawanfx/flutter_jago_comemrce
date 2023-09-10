import '../../../product/data/models/product_model.dart';

class CartProduct {
  final ProductModel product;
  final int quantity;

  CartProduct({required this.product, required this.quantity});
}
