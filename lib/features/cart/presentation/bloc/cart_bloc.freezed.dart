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
  ProductModel get product => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, int quantity) addToCart,
    required TResult Function(ProductModel product, int quantity)
        removeFromCart,
    required TResult Function(ProductModel product, int quantity) buyNow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int quantity)? removeFromCart,
    TResult? Function(ProductModel product, int quantity)? buyNow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, int quantity)? addToCart,
    TResult Function(ProductModel product, int quantity)? removeFromCart,
    TResult Function(ProductModel product, int quantity)? buyNow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeFromCart,
    required TResult Function(_BuyNow value) buyNow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeFromCart,
    TResult? Function(_BuyNow value)? buyNow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveToCart value)? removeFromCart,
    TResult Function(_BuyNow value)? buyNow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartEventCopyWith<CartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
  @useResult
  $Res call({ProductModel product, int quantity});
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddToCartCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$$_AddToCartCopyWith(
          _$_AddToCart value, $Res Function(_$_AddToCart) then) =
      __$$_AddToCartCopyWithImpl<$Res>;
  @override
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
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int quantity)? removeFromCart,
    TResult? Function(ProductModel product, int quantity)? buyNow,
  }) {
    return addToCart?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeFromCart,
    required TResult Function(_BuyNow value) buyNow,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeFromCart,
    TResult? Function(_BuyNow value)? buyNow,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

  @override
  ProductModel get product;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveToCartCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$_RemoveToCartCopyWith(
          _$_RemoveToCart value, $Res Function(_$_RemoveToCart) then) =
      __$$_RemoveToCartCopyWithImpl<$Res>;
  @override
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
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int quantity)? removeFromCart,
    TResult? Function(ProductModel product, int quantity)? buyNow,
  }) {
    return removeFromCart?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeFromCart,
    required TResult Function(_BuyNow value) buyNow,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeFromCart,
    TResult? Function(_BuyNow value)? buyNow,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

  @override
  ProductModel get product;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_RemoveToCartCopyWith<_$_RemoveToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BuyNowCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$$_BuyNowCopyWith(_$_BuyNow value, $Res Function(_$_BuyNow) then) =
      __$$_BuyNowCopyWithImpl<$Res>;
  @override
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
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int quantity)? removeFromCart,
    TResult? Function(ProductModel product, int quantity)? buyNow,
  }) {
    return buyNow?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveToCart value) removeFromCart,
    required TResult Function(_BuyNow value) buyNow,
  }) {
    return buyNow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveToCart value)? removeFromCart,
    TResult? Function(_BuyNow value)? buyNow,
  }) {
    return buyNow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

  @override
  ProductModel get product;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_BuyNowCopyWith<_$_BuyNow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CartProduct> cartProducts, bool? buyNow)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CartProduct> cartProducts, bool? buyNow)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CartProduct> cartProducts, bool? buyNow)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
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

class _$_StateLoading extends _StateLoading {
  const _$_StateLoading() : super._();

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
    required TResult Function(List<CartProduct> cartProducts, bool? buyNow)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CartProduct> cartProducts, bool? buyNow)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CartProduct> cartProducts, bool? buyNow)? loaded,
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
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StateLoading extends CartState {
  const factory _StateLoading() = _$_StateLoading;
  const _StateLoading._() : super._();
}

/// @nodoc
abstract class _$$_StateLoadedCopyWith<$Res> {
  factory _$$_StateLoadedCopyWith(
          _$_StateLoaded value, $Res Function(_$_StateLoaded) then) =
      __$$_StateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartProduct> cartProducts, bool? buyNow});
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
    Object? buyNow = freezed,
  }) {
    return _then(_$_StateLoaded(
      null == cartProducts
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      buyNow: freezed == buyNow
          ? _value.buyNow
          : buyNow // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_StateLoaded extends _StateLoaded {
  const _$_StateLoaded(final List<CartProduct> cartProducts,
      {this.buyNow = false})
      : _cartProducts = cartProducts,
        super._();

  final List<CartProduct> _cartProducts;
  @override
  List<CartProduct> get cartProducts {
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProducts);
  }

  @override
  @JsonKey()
  final bool? buyNow;

  @override
  String toString() {
    return 'CartState.loaded(cartProducts: $cartProducts, buyNow: $buyNow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateLoaded &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts) &&
            (identical(other.buyNow, buyNow) || other.buyNow == buyNow));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cartProducts), buyNow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateLoadedCopyWith<_$_StateLoaded> get copyWith =>
      __$$_StateLoadedCopyWithImpl<_$_StateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CartProduct> cartProducts, bool? buyNow)
        loaded,
  }) {
    return loaded(cartProducts, buyNow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CartProduct> cartProducts, bool? buyNow)? loaded,
  }) {
    return loaded?.call(cartProducts, buyNow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CartProduct> cartProducts, bool? buyNow)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cartProducts, buyNow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _StateLoaded extends CartState {
  const factory _StateLoaded(final List<CartProduct> cartProducts,
      {final bool? buyNow}) = _$_StateLoaded;
  const _StateLoaded._() : super._();

  List<CartProduct> get cartProducts;
  bool? get buyNow;
  @JsonKey(ignore: true)
  _$$_StateLoadedCopyWith<_$_StateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
