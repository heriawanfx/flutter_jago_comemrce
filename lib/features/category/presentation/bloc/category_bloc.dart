// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/category_model.dart';
import '../../domain/repositories/category_repository.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository categoryRepository;
  CategoryBloc({
    required this.categoryRepository,
  }) : super(const _StateInitial()) {
    on<_GetCategories>((event, emit) async {
      emit(const _StateLoading());

      final result = await categoryRepository.getCategories();
      result.fold(
        (message) => emit(_StateError(message)),
        (data) => emit(_StateLoaded(data)),
      );
    });

    on<_GetCategory>((event, emit) async {
      emit(const _StateLoading());

      final result = await categoryRepository.getCategory(event.id);
      result.fold(
        (message) => emit(_StateError(message)),
        (data) => emit(_StateLoaded(List.from([data]))),
      );
    });
  }
}
