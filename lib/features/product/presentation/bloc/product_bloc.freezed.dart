// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? category_id) getProducts,
    required TResult Function(int id) getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? category_id)? getProducts,
    TResult? Function(int id)? getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? category_id)? getProducts,
    TResult Function(int id)? getProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProduct value) getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProduct value)? getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProduct value)? getProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started extends _Started {
  const _$_Started() : super._();

  @override
  String toString() {
    return 'ProductEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? category_id) getProducts,
    required TResult Function(int id) getProduct,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? category_id)? getProducts,
    TResult? Function(int id)? getProduct,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? category_id)? getProducts,
    TResult Function(int id)? getProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProduct value) getProduct,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProduct value)? getProduct,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProduct value)? getProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started extends ProductEvent {
  const factory _Started() = _$_Started;
  const _Started._() : super._();
}

/// @nodoc
abstract class _$$_GetProductsCopyWith<$Res> {
  factory _$$_GetProductsCopyWith(
          _$_GetProducts value, $Res Function(_$_GetProducts) then) =
      __$$_GetProductsCopyWithImpl<$Res>;
  @useResult
  $Res call({int? category_id});
}

/// @nodoc
class __$$_GetProductsCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetProducts>
    implements _$$_GetProductsCopyWith<$Res> {
  __$$_GetProductsCopyWithImpl(
      _$_GetProducts _value, $Res Function(_$_GetProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category_id = freezed,
  }) {
    return _then(_$_GetProducts(
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_GetProducts extends _GetProducts {
  const _$_GetProducts({this.category_id}) : super._();

  @override
  final int? category_id;

  @override
  String toString() {
    return 'ProductEvent.getProducts(category_id: $category_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProducts &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProductsCopyWith<_$_GetProducts> get copyWith =>
      __$$_GetProductsCopyWithImpl<_$_GetProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? category_id) getProducts,
    required TResult Function(int id) getProduct,
  }) {
    return getProducts(category_id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? category_id)? getProducts,
    TResult? Function(int id)? getProduct,
  }) {
    return getProducts?.call(category_id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? category_id)? getProducts,
    TResult Function(int id)? getProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(category_id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProduct value) getProduct,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProduct value)? getProduct,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProduct value)? getProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts extends ProductEvent {
  const factory _GetProducts({final int? category_id}) = _$_GetProducts;
  const _GetProducts._() : super._();

  int? get category_id;
  @JsonKey(ignore: true)
  _$$_GetProductsCopyWith<_$_GetProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetProductCopyWith<$Res> {
  factory _$$_GetProductCopyWith(
          _$_GetProduct value, $Res Function(_$_GetProduct) then) =
      __$$_GetProductCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_GetProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetProduct>
    implements _$$_GetProductCopyWith<$Res> {
  __$$_GetProductCopyWithImpl(
      _$_GetProduct _value, $Res Function(_$_GetProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetProduct(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetProduct extends _GetProduct {
  const _$_GetProduct(this.id) : super._();

  @override
  final int id;

  @override
  String toString() {
    return 'ProductEvent.getProduct(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProduct &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProductCopyWith<_$_GetProduct> get copyWith =>
      __$$_GetProductCopyWithImpl<_$_GetProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? category_id) getProducts,
    required TResult Function(int id) getProduct,
  }) {
    return getProduct(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? category_id)? getProducts,
    TResult? Function(int id)? getProduct,
  }) {
    return getProduct?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? category_id)? getProducts,
    TResult Function(int id)? getProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetProduct value) getProduct,
  }) {
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetProduct value)? getProduct,
  }) {
    return getProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetProduct value)? getProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(this);
    }
    return orElse();
  }
}

abstract class _GetProduct extends ProductEvent {
  const factory _GetProduct(final int id) = _$_GetProduct;
  const _GetProduct._() : super._();

  int get id;
  @JsonKey(ignore: true)
  _$$_GetProductCopyWith<_$_GetProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() lading,
    required TResult Function(List<ProductModel> data) loaded,
    required TResult Function(ProductModel data) loadedDetail,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? lading,
    TResult? Function(List<ProductModel> data)? loaded,
    TResult? Function(ProductModel data)? loadedDetail,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? lading,
    TResult Function(List<ProductModel> data)? loaded,
    TResult Function(ProductModel data)? loadedDetail,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) lading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateLoadedDetail value) loadedDetail,
    required TResult Function(_StateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? lading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateLoadedDetail value)? loadedDetail,
    TResult? Function(_StateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? lading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateLoadedDetail value)? loadedDetail,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StateInitialCopyWith<$Res> {
  factory _$$_StateInitialCopyWith(
          _$_StateInitial value, $Res Function(_$_StateInitial) then) =
      __$$_StateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateInitialCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_StateInitial>
    implements _$$_StateInitialCopyWith<$Res> {
  __$$_StateInitialCopyWithImpl(
      _$_StateInitial _value, $Res Function(_$_StateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateInitial implements _StateInitial {
  const _$_StateInitial();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() lading,
    required TResult Function(List<ProductModel> data) loaded,
    required TResult Function(ProductModel data) loadedDetail,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? lading,
    TResult? Function(List<ProductModel> data)? loaded,
    TResult? Function(ProductModel data)? loadedDetail,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? lading,
    TResult Function(List<ProductModel> data)? loaded,
    TResult Function(ProductModel data)? loadedDetail,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) lading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateLoadedDetail value) loadedDetail,
    required TResult Function(_StateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? lading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateLoadedDetail value)? loadedDetail,
    TResult? Function(_StateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? lading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateLoadedDetail value)? loadedDetail,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StateInitial implements ProductState {
  const factory _StateInitial() = _$_StateInitial;
}

/// @nodoc
abstract class _$$_StateLoadingCopyWith<$Res> {
  factory _$$_StateLoadingCopyWith(
          _$_StateLoading value, $Res Function(_$_StateLoading) then) =
      __$$_StateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateLoadingCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_StateLoading>
    implements _$$_StateLoadingCopyWith<$Res> {
  __$$_StateLoadingCopyWithImpl(
      _$_StateLoading _value, $Res Function(_$_StateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateLoading implements _StateLoading {
  const _$_StateLoading();

  @override
  String toString() {
    return 'ProductState.lading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() lading,
    required TResult Function(List<ProductModel> data) loaded,
    required TResult Function(ProductModel data) loadedDetail,
    required TResult Function(String message) error,
  }) {
    return lading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? lading,
    TResult? Function(List<ProductModel> data)? loaded,
    TResult? Function(ProductModel data)? loadedDetail,
    TResult? Function(String message)? error,
  }) {
    return lading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? lading,
    TResult Function(List<ProductModel> data)? loaded,
    TResult Function(ProductModel data)? loadedDetail,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (lading != null) {
      return lading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) lading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateLoadedDetail value) loadedDetail,
    required TResult Function(_StateError value) error,
  }) {
    return lading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? lading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateLoadedDetail value)? loadedDetail,
    TResult? Function(_StateError value)? error,
  }) {
    return lading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? lading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateLoadedDetail value)? loadedDetail,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (lading != null) {
      return lading(this);
    }
    return orElse();
  }
}

abstract class _StateLoading implements ProductState {
  const factory _StateLoading() = _$_StateLoading;
}

/// @nodoc
abstract class _$$_StateLoadedCopyWith<$Res> {
  factory _$$_StateLoadedCopyWith(
          _$_StateLoaded value, $Res Function(_$_StateLoaded) then) =
      __$$_StateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> data});
}

/// @nodoc
class __$$_StateLoadedCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_StateLoaded>
    implements _$$_StateLoadedCopyWith<$Res> {
  __$$_StateLoadedCopyWithImpl(
      _$_StateLoaded _value, $Res Function(_$_StateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_StateLoaded(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_StateLoaded implements _StateLoaded {
  const _$_StateLoaded(final List<ProductModel> data) : _data = data;

  final List<ProductModel> _data;
  @override
  List<ProductModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProductState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateLoaded &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateLoadedCopyWith<_$_StateLoaded> get copyWith =>
      __$$_StateLoadedCopyWithImpl<_$_StateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() lading,
    required TResult Function(List<ProductModel> data) loaded,
    required TResult Function(ProductModel data) loadedDetail,
    required TResult Function(String message) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? lading,
    TResult? Function(List<ProductModel> data)? loaded,
    TResult? Function(ProductModel data)? loadedDetail,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? lading,
    TResult Function(List<ProductModel> data)? loaded,
    TResult Function(ProductModel data)? loadedDetail,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) lading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateLoadedDetail value) loadedDetail,
    required TResult Function(_StateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? lading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateLoadedDetail value)? loadedDetail,
    TResult? Function(_StateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? lading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateLoadedDetail value)? loadedDetail,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _StateLoaded implements ProductState {
  const factory _StateLoaded(final List<ProductModel> data) = _$_StateLoaded;

  List<ProductModel> get data;
  @JsonKey(ignore: true)
  _$$_StateLoadedCopyWith<_$_StateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateLoadedDetailCopyWith<$Res> {
  factory _$$_StateLoadedDetailCopyWith(_$_StateLoadedDetail value,
          $Res Function(_$_StateLoadedDetail) then) =
      __$$_StateLoadedDetailCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel data});
}

/// @nodoc
class __$$_StateLoadedDetailCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_StateLoadedDetail>
    implements _$$_StateLoadedDetailCopyWith<$Res> {
  __$$_StateLoadedDetailCopyWithImpl(
      _$_StateLoadedDetail _value, $Res Function(_$_StateLoadedDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_StateLoadedDetail(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$_StateLoadedDetail implements _StateLoadedDetail {
  const _$_StateLoadedDetail(this.data);

  @override
  final ProductModel data;

  @override
  String toString() {
    return 'ProductState.loadedDetail(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateLoadedDetail &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateLoadedDetailCopyWith<_$_StateLoadedDetail> get copyWith =>
      __$$_StateLoadedDetailCopyWithImpl<_$_StateLoadedDetail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() lading,
    required TResult Function(List<ProductModel> data) loaded,
    required TResult Function(ProductModel data) loadedDetail,
    required TResult Function(String message) error,
  }) {
    return loadedDetail(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? lading,
    TResult? Function(List<ProductModel> data)? loaded,
    TResult? Function(ProductModel data)? loadedDetail,
    TResult? Function(String message)? error,
  }) {
    return loadedDetail?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? lading,
    TResult Function(List<ProductModel> data)? loaded,
    TResult Function(ProductModel data)? loadedDetail,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedDetail != null) {
      return loadedDetail(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) lading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateLoadedDetail value) loadedDetail,
    required TResult Function(_StateError value) error,
  }) {
    return loadedDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? lading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateLoadedDetail value)? loadedDetail,
    TResult? Function(_StateError value)? error,
  }) {
    return loadedDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? lading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateLoadedDetail value)? loadedDetail,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (loadedDetail != null) {
      return loadedDetail(this);
    }
    return orElse();
  }
}

abstract class _StateLoadedDetail implements ProductState {
  const factory _StateLoadedDetail(final ProductModel data) =
      _$_StateLoadedDetail;

  ProductModel get data;
  @JsonKey(ignore: true)
  _$$_StateLoadedDetailCopyWith<_$_StateLoadedDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateErrorCopyWith<$Res> {
  factory _$$_StateErrorCopyWith(
          _$_StateError value, $Res Function(_$_StateError) then) =
      __$$_StateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_StateErrorCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_StateError>
    implements _$$_StateErrorCopyWith<$Res> {
  __$$_StateErrorCopyWithImpl(
      _$_StateError _value, $Res Function(_$_StateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_StateError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StateError implements _StateError {
  const _$_StateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateErrorCopyWith<_$_StateError> get copyWith =>
      __$$_StateErrorCopyWithImpl<_$_StateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() lading,
    required TResult Function(List<ProductModel> data) loaded,
    required TResult Function(ProductModel data) loadedDetail,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? lading,
    TResult? Function(List<ProductModel> data)? loaded,
    TResult? Function(ProductModel data)? loadedDetail,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? lading,
    TResult Function(List<ProductModel> data)? loaded,
    TResult Function(ProductModel data)? loadedDetail,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitial value) initial,
    required TResult Function(_StateLoading value) lading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateLoadedDetail value) loadedDetail,
    required TResult Function(_StateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitial value)? initial,
    TResult? Function(_StateLoading value)? lading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateLoadedDetail value)? loadedDetail,
    TResult? Function(_StateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitial value)? initial,
    TResult Function(_StateLoading value)? lading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateLoadedDetail value)? loadedDetail,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StateError implements ProductState {
  const factory _StateError(final String message) = _$_StateError;

  String get message;
  @JsonKey(ignore: true)
  _$$_StateErrorCopyWith<_$_StateError> get copyWith =>
      throw _privateConstructorUsedError;
}
