// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/product_model.dart';
import '../../domain/repositories/product_repository.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;
  ProductBloc({
    required this.productRepository,
  }) : super(const _StateInitial()) {
    on<_GetProducts>((event, emit) async {
      emit(const _StateLoading());

      final result = await productRepository.getProducts(
        category_id: event.category_id,
      );
      result.fold(
        (message) => emit(_StateError(message)),
        (data) => emit(_StateLoaded(data)),
      );
    });
  }
}
