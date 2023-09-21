// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductModel product, int quantity) addToCart,
    required TResult Function(ProductModel product, int quantity)
        removeFromCart,
    required TResult Function(ProductModel product, int quantity) buyNow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int quantity)? removeFromCart,
    TResult? Function(ProductModel product, int quantity)? buyNow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductModel product, int quantity)? addToCart,
    TResult Function(ProductModel product, int quantity)? removeFromCart,
    TResult Function(ProductModel product, int quantity)? buyNow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeFromCart,
    required TResult Function(_BuyNow value) buyNow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeFromCart,
    TResult? Function(_BuyNow value)? buyNow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeFromCart,
    TResult Function(_BuyNow value)? buyNow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

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
    extends _$CartEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CartEvent.started()';
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
    required TResult Function(ProductModel product, int quantity) addToCart,
    required TResult Function(ProductModel product, int quantity)
        removeFromCart,
    required TResult Function(ProductModel product, int quantity) buyNow,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int quantity)? removeFromCart,
    TResult? Function(ProductModel product, int quantity)? buyNow,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductModel product, int quantity)? addToCart,
    TResult Function(ProductModel product, int quantity)? removeFromCart,
    TResult Function(ProductModel product, int quantity)? buyNow,
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
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeFromCart,
    required TResult Function(_BuyNow value) buyNow,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeFromCart,
    TResult? Function(_BuyNow value)? buyNow,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeFromCart,
    TResult Function(_BuyNow value)? buyNow,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_AddToCartCopyWith<$Res> {
  factory _$$_AddToCartCopyWith(
          _$_AddToCart value, $Res Function(_$_AddToCart) then) =
      __$$_AddToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product, int quantity});
}

/// @nodoc
class __$$_AddToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_AddToCart>
    implements _$$_AddToCartCopyWith<$Res> {
  __$$_AddToCartCopyWithImpl(
      _$_AddToCart _value, $Res Function(_$_AddToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$_AddToCart(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddToCart implements _AddToCart {
  const _$_AddToCart(this.product, this.quantity);

  @override
  final ProductModel product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.addToCart(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToCart &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      __$$_AddToCartCopyWithImpl<_$_AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductModel product, int quantity) addToCart,
    required TResult Function(ProductModel product, int quantity)
        removeFromCart,
    required TResult Function(ProductModel product, int quantity) buyNow,
  }) {
    return addToCart(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int quantity)? removeFromCart,
    TResult? Function(ProductModel product, int quantity)? buyNow,
  }) {
    return addToCart?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductModel product, int quantity)? addToCart,
    TResult Function(ProductModel product, int quantity)? removeFromCart,
    TResult Function(ProductModel product, int quantity)? buyNow,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeFromCart,
    required TResult Function(_BuyNow value) buyNow,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeFromCart,
    TResult? Function(_BuyNow value)? buyNow,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeFromCart,
    TResult Function(_BuyNow value)? buyNow,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(final ProductModel product, final int quantity) =
      _$_AddToCart;

  ProductModel get product;
  int get quantity;
  @JsonKey(ignore: true)
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveToCartCopyWith<$Res> {
  factory _$$_RemoveToCartCopyWith(
          _$_RemoveToCart value, $Res Function(_$_RemoveToCart) then) =
      __$$_RemoveToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product, int quantity});
}

/// @nodoc
class __$$_RemoveToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_RemoveToCart>
    implements _$$_RemoveToCartCopyWith<$Res> {
  __$$_RemoveToCartCopyWithImpl(
      _$_RemoveToCart _value, $Res Function(_$_RemoveToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$_RemoveToCart(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveToCart implements _RemoveToCart {
  const _$_RemoveToCart(this.product, this.quantity);

  @override
  final ProductModel product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.removeFromCart(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveToCart &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveToCartCopyWith<_$_RemoveToCart> get copyWith =>
      __$$_RemoveToCartCopyWithImpl<_$_RemoveToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductModel product, int quantity) addToCart,
    required TResult Function(ProductModel product, int quantity)
        removeFromCart,
    required TResult Function(ProductModel product, int quantity) buyNow,
  }) {
    return removeFromCart(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int quantity)? removeFromCart,
    TResult? Function(ProductModel product, int quantity)? buyNow,
  }) {
    return removeFromCart?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductModel product, int quantity)? addToCart,
    TResult Function(ProductModel product, int quantity)? removeFromCart,
    TResult Function(ProductModel product, int quantity)? buyNow,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeFromCart,
    required TResult Function(_BuyNow value) buyNow,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeFromCart,
    TResult? Function(_BuyNow value)? buyNow,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeFromCart,
    TResult Function(_BuyNow value)? buyNow,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveToCart implements CartEvent {
  const factory _RemoveToCart(final ProductModel product, final int quantity) =
      _$_RemoveToCart;

  ProductModel get product;
  int get quantity;
  @JsonKey(ignore: true)
  _$$_RemoveToCartCopyWith<_$_RemoveToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BuyNowCopyWith<$Res> {
  factory _$$_BuyNowCopyWith(_$_BuyNow value, $Res Function(_$_BuyNow) then) =
      __$$_BuyNowCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product, int quantity});
}

/// @nodoc
class __$$_BuyNowCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_BuyNow>
    implements _$$_BuyNowCopyWith<$Res> {
  __$$_BuyNowCopyWithImpl(_$_BuyNow _value, $Res Function(_$_BuyNow) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$_BuyNow(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BuyNow implements _BuyNow {
  const _$_BuyNow(this.product, this.quantity);

  @override
  final ProductModel product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.buyNow(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyNow &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuyNowCopyWith<_$_BuyNow> get copyWith =>
      __$$_BuyNowCopyWithImpl<_$_BuyNow>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductModel product, int quantity) addToCart,
    required TResult Function(ProductModel product, int quantity)
        removeFromCart,
    required TResult Function(ProductModel product, int quantity) buyNow,
  }) {
    return buyNow(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int quantity)? removeFromCart,
    TResult? Function(ProductModel product, int quantity)? buyNow,
  }) {
    return buyNow?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductModel product, int quantity)? addToCart,
    TResult Function(ProductModel product, int quantity)? removeFromCart,
    TResult Function(ProductModel product, int quantity)? buyNow,
    required TResult orElse(),
  }) {
    if (buyNow != null) {
      return buyNow(product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeFromCart,
    required TResult Function(_BuyNow value) buyNow,
  }) {
    return buyNow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeFromCart,
    TResult? Function(_BuyNow value)? buyNow,
  }) {
    return buyNow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeFromCart,
    TResult Function(_BuyNow value)? buyNow,
    required TResult orElse(),
  }) {
    if (buyNow != null) {
      return buyNow(this);
    }
    return orElse();
  }
}

abstract class _BuyNow implements CartEvent {
  const factory _BuyNow(final ProductModel product, final int quantity) =
      _$_BuyNow;

  ProductModel get product;
  int get quantity;
  @JsonKey(ignore: true)
  _$$_BuyNowCopyWith<_$_BuyNow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CartProduct> cartProducts) loaded,
    required TResult Function() cartAdded,
    required TResult Function() buyNow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CartProduct> cartProducts)? loaded,
    TResult? Function()? cartAdded,
    TResult? Function()? buyNow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CartProduct> cartProducts)? loaded,
    TResult Function()? cartAdded,
    TResult Function()? buyNow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateCartAdded value) cartAdded,
    required TResult Function(_StateBuyNow value) buyNow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateCartAdded value)? cartAdded,
    TResult? Function(_StateBuyNow value)? buyNow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateCartAdded value)? cartAdded,
    TResult Function(_StateBuyNow value)? buyNow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StateLoadingCopyWith<$Res> {
  factory _$$_StateLoadingCopyWith(
          _$_StateLoading value, $Res Function(_$_StateLoading) then) =
      __$$_StateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateLoadingCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_StateLoading>
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
    return 'CartState.loading()';
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
    required TResult Function() loading,
    required TResult Function(List<CartProduct> cartProducts) loaded,
    required TResult Function() cartAdded,
    required TResult Function() buyNow,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CartProduct> cartProducts)? loaded,
    TResult? Function()? cartAdded,
    TResult? Function()? buyNow,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CartProduct> cartProducts)? loaded,
    TResult Function()? cartAdded,
    TResult Function()? buyNow,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateCartAdded value) cartAdded,
    required TResult Function(_StateBuyNow value) buyNow,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateCartAdded value)? cartAdded,
    TResult? Function(_StateBuyNow value)? buyNow,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateCartAdded value)? cartAdded,
    TResult Function(_StateBuyNow value)? buyNow,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StateLoading implements CartState {
  const factory _StateLoading() = _$_StateLoading;
}

/// @nodoc
abstract class _$$_StateLoadedCopyWith<$Res> {
  factory _$$_StateLoadedCopyWith(
          _$_StateLoaded value, $Res Function(_$_StateLoaded) then) =
      __$$_StateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartProduct> cartProducts});
}

/// @nodoc
class __$$_StateLoadedCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_StateLoaded>
    implements _$$_StateLoadedCopyWith<$Res> {
  __$$_StateLoadedCopyWithImpl(
      _$_StateLoaded _value, $Res Function(_$_StateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProducts = null,
  }) {
    return _then(_$_StateLoaded(
      null == cartProducts
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
    ));
  }
}

/// @nodoc

class _$_StateLoaded implements _StateLoaded {
  const _$_StateLoaded(final List<CartProduct> cartProducts)
      : _cartProducts = cartProducts;

  final List<CartProduct> _cartProducts;
  @override
  List<CartProduct> get cartProducts {
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProducts);
  }

  @override
  String toString() {
    return 'CartState.loaded(cartProducts: $cartProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateLoaded &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cartProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateLoadedCopyWith<_$_StateLoaded> get copyWith =>
      __$$_StateLoadedCopyWithImpl<_$_StateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CartProduct> cartProducts) loaded,
    required TResult Function() cartAdded,
    required TResult Function() buyNow,
  }) {
    return loaded(cartProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CartProduct> cartProducts)? loaded,
    TResult? Function()? cartAdded,
    TResult? Function()? buyNow,
  }) {
    return loaded?.call(cartProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CartProduct> cartProducts)? loaded,
    TResult Function()? cartAdded,
    TResult Function()? buyNow,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cartProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateCartAdded value) cartAdded,
    required TResult Function(_StateBuyNow value) buyNow,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateCartAdded value)? cartAdded,
    TResult? Function(_StateBuyNow value)? buyNow,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateCartAdded value)? cartAdded,
    TResult Function(_StateBuyNow value)? buyNow,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _StateLoaded implements CartState {
  const factory _StateLoaded(final List<CartProduct> cartProducts) =
      _$_StateLoaded;

  List<CartProduct> get cartProducts;
  @JsonKey(ignore: true)
  _$$_StateLoadedCopyWith<_$_StateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateCartAddedCopyWith<$Res> {
  factory _$$_StateCartAddedCopyWith(
          _$_StateCartAdded value, $Res Function(_$_StateCartAdded) then) =
      __$$_StateCartAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateCartAddedCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_StateCartAdded>
    implements _$$_StateCartAddedCopyWith<$Res> {
  __$$_StateCartAddedCopyWithImpl(
      _$_StateCartAdded _value, $Res Function(_$_StateCartAdded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateCartAdded implements _StateCartAdded {
  const _$_StateCartAdded();

  @override
  String toString() {
    return 'CartState.cartAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateCartAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CartProduct> cartProducts) loaded,
    required TResult Function() cartAdded,
    required TResult Function() buyNow,
  }) {
    return cartAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CartProduct> cartProducts)? loaded,
    TResult? Function()? cartAdded,
    TResult? Function()? buyNow,
  }) {
    return cartAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CartProduct> cartProducts)? loaded,
    TResult Function()? cartAdded,
    TResult Function()? buyNow,
    required TResult orElse(),
  }) {
    if (cartAdded != null) {
      return cartAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateCartAdded value) cartAdded,
    required TResult Function(_StateBuyNow value) buyNow,
  }) {
    return cartAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateCartAdded value)? cartAdded,
    TResult? Function(_StateBuyNow value)? buyNow,
  }) {
    return cartAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateCartAdded value)? cartAdded,
    TResult Function(_StateBuyNow value)? buyNow,
    required TResult orElse(),
  }) {
    if (cartAdded != null) {
      return cartAdded(this);
    }
    return orElse();
  }
}

abstract class _StateCartAdded implements CartState {
  const factory _StateCartAdded() = _$_StateCartAdded;
}

/// @nodoc
abstract class _$$_StateBuyNowCopyWith<$Res> {
  factory _$$_StateBuyNowCopyWith(
          _$_StateBuyNow value, $Res Function(_$_StateBuyNow) then) =
      __$$_StateBuyNowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateBuyNowCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_StateBuyNow>
    implements _$$_StateBuyNowCopyWith<$Res> {
  __$$_StateBuyNowCopyWithImpl(
      _$_StateBuyNow _value, $Res Function(_$_StateBuyNow) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateBuyNow implements _StateBuyNow {
  const _$_StateBuyNow();

  @override
  String toString() {
    return 'CartState.buyNow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateBuyNow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CartProduct> cartProducts) loaded,
    required TResult Function() cartAdded,
    required TResult Function() buyNow,
  }) {
    return buyNow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CartProduct> cartProducts)? loaded,
    TResult? Function()? cartAdded,
    TResult? Function()? buyNow,
  }) {
    return buyNow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CartProduct> cartProducts)? loaded,
    TResult Function()? cartAdded,
    TResult Function()? buyNow,
    required TResult orElse(),
  }) {
    if (buyNow != null) {
      return buyNow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateCartAdded value) cartAdded,
    required TResult Function(_StateBuyNow value) buyNow,
  }) {
    return buyNow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateCartAdded value)? cartAdded,
    TResult? Function(_StateBuyNow value)? buyNow,
  }) {
    return buyNow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateCartAdded value)? cartAdded,
    TResult Function(_StateBuyNow value)? buyNow,
    required TResult orElse(),
  }) {
    if (buyNow != null) {
      return buyNow(this);
    }
    return orElse();
  }
}

abstract class _StateBuyNow implements CartState {
  const factory _StateBuyNow() = _$_StateBuyNow;
}
