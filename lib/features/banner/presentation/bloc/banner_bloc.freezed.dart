// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBanners,
    required TResult Function(int index) setBannerIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBanners,
    TResult? Function(int index)? setBannerIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBanners,
    TResult Function(int index)? setBannerIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBanners value) getBanners,
    required TResult Function(_SetBannerIndex value) setBannerIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBanners value)? getBanners,
    TResult? Function(_SetBannerIndex value)? setBannerIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBanners value)? getBanners,
    TResult Function(_SetBannerIndex value)? setBannerIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerEventCopyWith<$Res> {
  factory $BannerEventCopyWith(
          BannerEvent value, $Res Function(BannerEvent) then) =
      _$BannerEventCopyWithImpl<$Res, BannerEvent>;
}

/// @nodoc
class _$BannerEventCopyWithImpl<$Res, $Val extends BannerEvent>
    implements $BannerEventCopyWith<$Res> {
  _$BannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetBannersCopyWith<$Res> {
  factory _$$_GetBannersCopyWith(
          _$_GetBanners value, $Res Function(_$_GetBanners) then) =
      __$$_GetBannersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetBannersCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$_GetBanners>
    implements _$$_GetBannersCopyWith<$Res> {
  __$$_GetBannersCopyWithImpl(
      _$_GetBanners _value, $Res Function(_$_GetBanners) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetBanners implements _GetBanners {
  const _$_GetBanners();

  @override
  String toString() {
    return 'BannerEvent.getBanners()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetBanners);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBanners,
    required TResult Function(int index) setBannerIndex,
  }) {
    return getBanners();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBanners,
    TResult? Function(int index)? setBannerIndex,
  }) {
    return getBanners?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBanners,
    TResult Function(int index)? setBannerIndex,
    required TResult orElse(),
  }) {
    if (getBanners != null) {
      return getBanners();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBanners value) getBanners,
    required TResult Function(_SetBannerIndex value) setBannerIndex,
  }) {
    return getBanners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBanners value)? getBanners,
    TResult? Function(_SetBannerIndex value)? setBannerIndex,
  }) {
    return getBanners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBanners value)? getBanners,
    TResult Function(_SetBannerIndex value)? setBannerIndex,
    required TResult orElse(),
  }) {
    if (getBanners != null) {
      return getBanners(this);
    }
    return orElse();
  }
}

abstract class _GetBanners implements BannerEvent {
  const factory _GetBanners() = _$_GetBanners;
}

/// @nodoc
abstract class _$$_SetBannerIndexCopyWith<$Res> {
  factory _$$_SetBannerIndexCopyWith(
          _$_SetBannerIndex value, $Res Function(_$_SetBannerIndex) then) =
      __$$_SetBannerIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_SetBannerIndexCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$_SetBannerIndex>
    implements _$$_SetBannerIndexCopyWith<$Res> {
  __$$_SetBannerIndexCopyWithImpl(
      _$_SetBannerIndex _value, $Res Function(_$_SetBannerIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_SetBannerIndex(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetBannerIndex implements _SetBannerIndex {
  const _$_SetBannerIndex(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'BannerEvent.setBannerIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetBannerIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetBannerIndexCopyWith<_$_SetBannerIndex> get copyWith =>
      __$$_SetBannerIndexCopyWithImpl<_$_SetBannerIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBanners,
    required TResult Function(int index) setBannerIndex,
  }) {
    return setBannerIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBanners,
    TResult? Function(int index)? setBannerIndex,
  }) {
    return setBannerIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBanners,
    TResult Function(int index)? setBannerIndex,
    required TResult orElse(),
  }) {
    if (setBannerIndex != null) {
      return setBannerIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBanners value) getBanners,
    required TResult Function(_SetBannerIndex value) setBannerIndex,
  }) {
    return setBannerIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBanners value)? getBanners,
    TResult? Function(_SetBannerIndex value)? setBannerIndex,
  }) {
    return setBannerIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBanners value)? getBanners,
    TResult Function(_SetBannerIndex value)? setBannerIndex,
    required TResult orElse(),
  }) {
    if (setBannerIndex != null) {
      return setBannerIndex(this);
    }
    return orElse();
  }
}

abstract class _SetBannerIndex implements BannerEvent {
  const factory _SetBannerIndex(final int index) = _$_SetBannerIndex;

  int get index;
  @JsonKey(ignore: true)
  _$$_SetBannerIndexCopyWith<_$_SetBannerIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BannerModel> data, int? activeIndex) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> data, int? activeIndex)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BannerModel> data, int? activeIndex)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerStateCopyWith<$Res> {
  factory $BannerStateCopyWith(
          BannerState value, $Res Function(BannerState) then) =
      _$BannerStateCopyWithImpl<$Res, BannerState>;
}

/// @nodoc
class _$BannerStateCopyWithImpl<$Res, $Val extends BannerState>
    implements $BannerStateCopyWith<$Res> {
  _$BannerStateCopyWithImpl(this._value, this._then);

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
    extends _$BannerStateCopyWithImpl<$Res, _$_StateLoading>
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
    return 'BannerState.loading()';
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
    required TResult Function(List<BannerModel> data, int? activeIndex) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> data, int? activeIndex)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BannerModel> data, int? activeIndex)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_StateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StateLoading extends BannerState {
  const factory _StateLoading() = _$_StateLoading;
  const _StateLoading._() : super._();
}

/// @nodoc
abstract class _$$_StateLoadedCopyWith<$Res> {
  factory _$$_StateLoadedCopyWith(
          _$_StateLoaded value, $Res Function(_$_StateLoaded) then) =
      __$$_StateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BannerModel> data, int? activeIndex});
}

/// @nodoc
class __$$_StateLoadedCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$_StateLoaded>
    implements _$$_StateLoadedCopyWith<$Res> {
  __$$_StateLoadedCopyWithImpl(
      _$_StateLoaded _value, $Res Function(_$_StateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? activeIndex = freezed,
  }) {
    return _then(_$_StateLoaded(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      activeIndex: freezed == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_StateLoaded extends _StateLoaded {
  const _$_StateLoaded(final List<BannerModel> data, {this.activeIndex = 0})
      : _data = data,
        super._();

  final List<BannerModel> _data;
  @override
  List<BannerModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final int? activeIndex;

  @override
  String toString() {
    return 'BannerState.loaded(data: $data, activeIndex: $activeIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateLoaded &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.activeIndex, activeIndex) ||
                other.activeIndex == activeIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), activeIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateLoadedCopyWith<_$_StateLoaded> get copyWith =>
      __$$_StateLoadedCopyWithImpl<_$_StateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BannerModel> data, int? activeIndex) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(data, activeIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> data, int? activeIndex)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(data, activeIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BannerModel> data, int? activeIndex)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data, activeIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _StateLoaded extends BannerState {
  const factory _StateLoaded(final List<BannerModel> data,
      {final int? activeIndex}) = _$_StateLoaded;
  const _StateLoaded._() : super._();

  List<BannerModel> get data;
  int? get activeIndex;
  @JsonKey(ignore: true)
  _$$_StateLoadedCopyWith<_$_StateLoaded> get copyWith =>
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
    extends _$BannerStateCopyWithImpl<$Res, _$_StateError>
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

class _$_StateError extends _StateError {
  const _$_StateError(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'BannerState.error(message: $message)';
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
    required TResult Function() loading,
    required TResult Function(List<BannerModel> data, int? activeIndex) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> data, int? activeIndex)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BannerModel> data, int? activeIndex)? loaded,
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
    required TResult Function(_StateLoading value) loading,
    required TResult Function(_StateLoaded value) loaded,
    required TResult Function(_StateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateLoading value)? loading,
    TResult? Function(_StateLoaded value)? loaded,
    TResult? Function(_StateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateLoading value)? loading,
    TResult Function(_StateLoaded value)? loaded,
    TResult Function(_StateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StateError extends BannerState {
  const factory _StateError(final String message) = _$_StateError;
  const _StateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_StateErrorCopyWith<_$_StateError> get copyWith =>
      throw _privateConstructorUsedError;
}
