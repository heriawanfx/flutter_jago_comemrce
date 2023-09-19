import '../../../product/data/models/product_model.dart';

class CartProduct {
  final ProductModel product;
  int quantity;

  CartProduct({required this.product, required this.quantity});
}
