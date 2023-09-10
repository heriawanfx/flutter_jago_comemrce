part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _StateInitial;
  const factory CategoryState.loading() = _StateLoading;
  const factory CategoryState.loaded(List<CategoryModel> data) = _StateLoaded;
  const factory CategoryState.error(String message) = _StateError;
}
