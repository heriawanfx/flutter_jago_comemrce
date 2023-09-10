part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _StateInitial;
  const factory ProductState.lading() = _StateLoading;
  const factory ProductState.loaded(List<ProductModel> data) = _StateLoaded;
  const factory ProductState.error(String message) = _StateError;
}
