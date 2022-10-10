// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadFavorite,
    required TResult Function(String idProduct) addFavorite,
    required TResult Function() deleteFavorite,
    required TResult Function(List<Product> products) updateFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFavorite,
    TResult Function(String idProduct)? addFavorite,
    TResult Function()? deleteFavorite,
    TResult Function(List<Product> products)? updateFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFavorite,
    TResult Function(String idProduct)? addFavorite,
    TResult Function()? deleteFavorite,
    TResult Function(List<Product> products)? updateFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadFavorite value) loadFavorite,
    required TResult Function(AddToFavorite value) addFavorite,
    required TResult Function(DeleteFromFavorite value) deleteFavorite,
    required TResult Function(UpdateFavorite value) updateFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFavorite value)? loadFavorite,
    TResult Function(AddToFavorite value)? addFavorite,
    TResult Function(DeleteFromFavorite value)? deleteFavorite,
    TResult Function(UpdateFavorite value)? updateFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFavorite value)? loadFavorite,
    TResult Function(AddToFavorite value)? addFavorite,
    TResult Function(DeleteFromFavorite value)? deleteFavorite,
    TResult Function(UpdateFavorite value)? updateFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

  final FavoriteEvent _value;
  // ignore: unused_field
  final $Res Function(FavoriteEvent) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res> extends _$FavoriteEventCopyWithImpl<$Res>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, (v) => _then(v as _$Started));

  @override
  _$Started get _value => super._value as _$Started;
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'FavoriteEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadFavorite,
    required TResult Function(String idProduct) addFavorite,
    required TResult Function() deleteFavorite,
    required TResult Function(List<Product> products) updateFavorite,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFavorite,
    TResult Function(String idProduct)? addFavorite,
    TResult Function()? deleteFavorite,
    TResult Function(List<Product> products)? updateFavorite,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFavorite,
    TResult Function(String idProduct)? addFavorite,
    TResult Function()? deleteFavorite,
    TResult Function(List<Product> products)? updateFavorite,
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
    required TResult Function(Started value) started,
    required TResult Function(LoadFavorite value) loadFavorite,
    required TResult Function(AddToFavorite value) addFavorite,
    required TResult Function(DeleteFromFavorite value) deleteFavorite,
    required TResult Function(UpdateFavorite value) updateFavorite,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFavorite value)? loadFavorite,
    TResult Function(AddToFavorite value)? addFavorite,
    TResult Function(DeleteFromFavorite value)? deleteFavorite,
    TResult Function(UpdateFavorite value)? updateFavorite,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFavorite value)? loadFavorite,
    TResult Function(AddToFavorite value)? addFavorite,
    TResult Function(DeleteFromFavorite value)? deleteFavorite,
    TResult Function(UpdateFavorite value)? updateFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements FavoriteEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$LoadFavoriteCopyWith<$Res> {
  factory _$$LoadFavoriteCopyWith(
          _$LoadFavorite value, $Res Function(_$LoadFavorite) then) =
      __$$LoadFavoriteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFavoriteCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res>
    implements _$$LoadFavoriteCopyWith<$Res> {
  __$$LoadFavoriteCopyWithImpl(
      _$LoadFavorite _value, $Res Function(_$LoadFavorite) _then)
      : super(_value, (v) => _then(v as _$LoadFavorite));

  @override
  _$LoadFavorite get _value => super._value as _$LoadFavorite;
}

/// @nodoc

class _$LoadFavorite implements LoadFavorite {
  const _$LoadFavorite();

  @override
  String toString() {
    return 'FavoriteEvent.loadFavorite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFavorite);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadFavorite,
    required TResult Function(String idProduct) addFavorite,
    required TResult Function() deleteFavorite,
    required TResult Function(List<Product> products) updateFavorite,
  }) {
    return loadFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFavorite,
    TResult Function(String idProduct)? addFavorite,
    TResult Function()? deleteFavorite,
    TResult Function(List<Product> products)? updateFavorite,
  }) {
    return loadFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFavorite,
    TResult Function(String idProduct)? addFavorite,
    TResult Function()? deleteFavorite,
    TResult Function(List<Product> products)? updateFavorite,
    required TResult orElse(),
  }) {
    if (loadFavorite != null) {
      return loadFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadFavorite value) loadFavorite,
    required TResult Function(AddToFavorite value) addFavorite,
    required TResult Function(DeleteFromFavorite value) deleteFavorite,
    required TResult Function(UpdateFavorite value) updateFavorite,
  }) {
    return loadFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFavorite value)? loadFavorite,
    TResult Function(AddToFavorite value)? addFavorite,
    TResult Function(DeleteFromFavorite value)? deleteFavorite,
    TResult Function(UpdateFavorite value)? updateFavorite,
  }) {
    return loadFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFavorite value)? loadFavorite,
    TResult Function(AddToFavorite value)? addFavorite,
    TResult Function(DeleteFromFavorite value)? deleteFavorite,
    TResult Function(UpdateFavorite value)? updateFavorite,
    required TResult orElse(),
  }) {
    if (loadFavorite != null) {
      return loadFavorite(this);
    }
    return orElse();
  }
}

abstract class LoadFavorite implements FavoriteEvent {
  const factory LoadFavorite() = _$LoadFavorite;
}

/// @nodoc
abstract class _$$AddToFavoriteCopyWith<$Res> {
  factory _$$AddToFavoriteCopyWith(
          _$AddToFavorite value, $Res Function(_$AddToFavorite) then) =
      __$$AddToFavoriteCopyWithImpl<$Res>;
  $Res call({String idProduct});
}

/// @nodoc
class __$$AddToFavoriteCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res>
    implements _$$AddToFavoriteCopyWith<$Res> {
  __$$AddToFavoriteCopyWithImpl(
      _$AddToFavorite _value, $Res Function(_$AddToFavorite) _then)
      : super(_value, (v) => _then(v as _$AddToFavorite));

  @override
  _$AddToFavorite get _value => super._value as _$AddToFavorite;

  @override
  $Res call({
    Object? idProduct = freezed,
  }) {
    return _then(_$AddToFavorite(
      idProduct: idProduct == freezed
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToFavorite implements AddToFavorite {
  const _$AddToFavorite({required this.idProduct});

  @override
  final String idProduct;

  @override
  String toString() {
    return 'FavoriteEvent.addFavorite(idProduct: $idProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFavorite &&
            const DeepCollectionEquality().equals(other.idProduct, idProduct));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(idProduct));

  @JsonKey(ignore: true)
  @override
  _$$AddToFavoriteCopyWith<_$AddToFavorite> get copyWith =>
      __$$AddToFavoriteCopyWithImpl<_$AddToFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadFavorite,
    required TResult Function(String idProduct) addFavorite,
    required TResult Function() deleteFavorite,
    required TResult Function(List<Product> products) updateFavorite,
  }) {
    return addFavorite(idProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFavorite,
    TResult Function(String idProduct)? addFavorite,
    TResult Function()? deleteFavorite,
    TResult Function(List<Product> products)? updateFavorite,
  }) {
    return addFavorite?.call(idProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFavorite,
    TResult Function(String idProduct)? addFavorite,
    TResult Function()? deleteFavorite,
    TResult Function(List<Product> products)? updateFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(idProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadFavorite value) loadFavorite,
    required TResult Function(AddToFavorite value) addFavorite,
    required TResult Function(DeleteFromFavorite value) deleteFavorite,
    required TResult Function(UpdateFavorite value) updateFavorite,
  }) {
    return addFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFavorite value)? loadFavorite,
    TResult Function(AddToFavorite value)? addFavorite,
    TResult Function(DeleteFromFavorite value)? deleteFavorite,
    TResult Function(UpdateFavorite value)? updateFavorite,
  }) {
    return addFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFavorite value)? loadFavorite,
    TResult Function(AddToFavorite value)? addFavorite,
    TResult Function(DeleteFromFavorite value)? deleteFavorite,
    TResult Function(UpdateFavorite value)? updateFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(this);
    }
    return orElse();
  }
}

abstract class AddToFavorite implements FavoriteEvent {
  const factory AddToFavorite({required final String idProduct}) =
      _$AddToFavorite;

  String get idProduct;
  @JsonKey(ignore: true)
  _$$AddToFavoriteCopyWith<_$AddToFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFromFavoriteCopyWith<$Res> {
  factory _$$DeleteFromFavoriteCopyWith(_$DeleteFromFavorite value,
          $Res Function(_$DeleteFromFavorite) then) =
      __$$DeleteFromFavoriteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteFromFavoriteCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res>
    implements _$$DeleteFromFavoriteCopyWith<$Res> {
  __$$DeleteFromFavoriteCopyWithImpl(
      _$DeleteFromFavorite _value, $Res Function(_$DeleteFromFavorite) _then)
      : super(_value, (v) => _then(v as _$DeleteFromFavorite));

  @override
  _$DeleteFromFavorite get _value => super._value as _$DeleteFromFavorite;
}

/// @nodoc

class _$DeleteFromFavorite implements DeleteFromFavorite {
  const _$DeleteFromFavorite();

  @override
  String toString() {
    return 'FavoriteEvent.deleteFavorite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteFromFavorite);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadFavorite,
    required TResult Function(String idProduct) addFavorite,
    required TResult Function() deleteFavorite,
    required TResult Function(List<Product> products) updateFavorite,
  }) {
    return deleteFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFavorite,
    TResult Function(String idProduct)? addFavorite,
    TResult Function()? deleteFavorite,
    TResult Function(List<Product> products)? updateFavorite,
  }) {
    return deleteFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFavorite,
    TResult Function(String idProduct)? addFavorite,
    TResult Function()? deleteFavorite,
    TResult Function(List<Product> products)? updateFavorite,
    required TResult orElse(),
  }) {
    if (deleteFavorite != null) {
      return deleteFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadFavorite value) loadFavorite,
    required TResult Function(AddToFavorite value) addFavorite,
    required TResult Function(DeleteFromFavorite value) deleteFavorite,
    required TResult Function(UpdateFavorite value) updateFavorite,
  }) {
    return deleteFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFavorite value)? loadFavorite,
    TResult Function(AddToFavorite value)? addFavorite,
    TResult Function(DeleteFromFavorite value)? deleteFavorite,
    TResult Function(UpdateFavorite value)? updateFavorite,
  }) {
    return deleteFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFavorite value)? loadFavorite,
    TResult Function(AddToFavorite value)? addFavorite,
    TResult Function(DeleteFromFavorite value)? deleteFavorite,
    TResult Function(UpdateFavorite value)? updateFavorite,
    required TResult orElse(),
  }) {
    if (deleteFavorite != null) {
      return deleteFavorite(this);
    }
    return orElse();
  }
}

abstract class DeleteFromFavorite implements FavoriteEvent {
  const factory DeleteFromFavorite() = _$DeleteFromFavorite;
}

/// @nodoc
abstract class _$$UpdateFavoriteCopyWith<$Res> {
  factory _$$UpdateFavoriteCopyWith(
          _$UpdateFavorite value, $Res Function(_$UpdateFavorite) then) =
      __$$UpdateFavoriteCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class __$$UpdateFavoriteCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res>
    implements _$$UpdateFavoriteCopyWith<$Res> {
  __$$UpdateFavoriteCopyWithImpl(
      _$UpdateFavorite _value, $Res Function(_$UpdateFavorite) _then)
      : super(_value, (v) => _then(v as _$UpdateFavorite));

  @override
  _$UpdateFavorite get _value => super._value as _$UpdateFavorite;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$UpdateFavorite(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$UpdateFavorite implements UpdateFavorite {
  const _$UpdateFavorite({required final List<Product> products})
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'FavoriteEvent.updateFavorite(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFavorite &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$UpdateFavoriteCopyWith<_$UpdateFavorite> get copyWith =>
      __$$UpdateFavoriteCopyWithImpl<_$UpdateFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadFavorite,
    required TResult Function(String idProduct) addFavorite,
    required TResult Function() deleteFavorite,
    required TResult Function(List<Product> products) updateFavorite,
  }) {
    return updateFavorite(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFavorite,
    TResult Function(String idProduct)? addFavorite,
    TResult Function()? deleteFavorite,
    TResult Function(List<Product> products)? updateFavorite,
  }) {
    return updateFavorite?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFavorite,
    TResult Function(String idProduct)? addFavorite,
    TResult Function()? deleteFavorite,
    TResult Function(List<Product> products)? updateFavorite,
    required TResult orElse(),
  }) {
    if (updateFavorite != null) {
      return updateFavorite(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadFavorite value) loadFavorite,
    required TResult Function(AddToFavorite value) addFavorite,
    required TResult Function(DeleteFromFavorite value) deleteFavorite,
    required TResult Function(UpdateFavorite value) updateFavorite,
  }) {
    return updateFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFavorite value)? loadFavorite,
    TResult Function(AddToFavorite value)? addFavorite,
    TResult Function(DeleteFromFavorite value)? deleteFavorite,
    TResult Function(UpdateFavorite value)? updateFavorite,
  }) {
    return updateFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFavorite value)? loadFavorite,
    TResult Function(AddToFavorite value)? addFavorite,
    TResult Function(DeleteFromFavorite value)? deleteFavorite,
    TResult Function(UpdateFavorite value)? updateFavorite,
    required TResult orElse(),
  }) {
    if (updateFavorite != null) {
      return updateFavorite(this);
    }
    return orElse();
  }
}

abstract class UpdateFavorite implements FavoriteEvent {
  const factory UpdateFavorite({required final List<Product> products}) =
      _$UpdateFavorite;

  List<Product> get products;
  @JsonKey(ignore: true)
  _$$UpdateFavoriteCopyWith<_$UpdateFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() added,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? added,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? added,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavoriteLoaded value) loaded,
    required TResult Function(_FavoriteAdded value) added,
    required TResult Function(_FavoriteError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteAdded value)? added,
    TResult Function(_FavoriteError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteAdded value)? added,
    TResult Function(_FavoriteError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  final FavoriteState _value;
  // ignore: unused_field
  final $Res Function(FavoriteState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FavoriteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() added,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? added,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? added,
    TResult Function(String error)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavoriteLoaded value) loaded,
    required TResult Function(_FavoriteAdded value) added,
    required TResult Function(_FavoriteError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteAdded value)? added,
    TResult Function(_FavoriteError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteAdded value)? added,
    TResult Function(_FavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoriteState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_FavoriteLoadedCopyWith<$Res> {
  factory _$$_FavoriteLoadedCopyWith(
          _$_FavoriteLoaded value, $Res Function(_$_FavoriteLoaded) then) =
      __$$_FavoriteLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FavoriteLoadedCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$$_FavoriteLoadedCopyWith<$Res> {
  __$$_FavoriteLoadedCopyWithImpl(
      _$_FavoriteLoaded _value, $Res Function(_$_FavoriteLoaded) _then)
      : super(_value, (v) => _then(v as _$_FavoriteLoaded));

  @override
  _$_FavoriteLoaded get _value => super._value as _$_FavoriteLoaded;
}

/// @nodoc

class _$_FavoriteLoaded implements _FavoriteLoaded {
  const _$_FavoriteLoaded();

  @override
  String toString() {
    return 'FavoriteState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FavoriteLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() added,
    required TResult Function(String error) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? added,
    TResult Function(String error)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? added,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavoriteLoaded value) loaded,
    required TResult Function(_FavoriteAdded value) added,
    required TResult Function(_FavoriteError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteAdded value)? added,
    TResult Function(_FavoriteError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteAdded value)? added,
    TResult Function(_FavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _FavoriteLoaded implements FavoriteState {
  const factory _FavoriteLoaded() = _$_FavoriteLoaded;
}

/// @nodoc
abstract class _$$_FavoriteAddedCopyWith<$Res> {
  factory _$$_FavoriteAddedCopyWith(
          _$_FavoriteAdded value, $Res Function(_$_FavoriteAdded) then) =
      __$$_FavoriteAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FavoriteAddedCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$$_FavoriteAddedCopyWith<$Res> {
  __$$_FavoriteAddedCopyWithImpl(
      _$_FavoriteAdded _value, $Res Function(_$_FavoriteAdded) _then)
      : super(_value, (v) => _then(v as _$_FavoriteAdded));

  @override
  _$_FavoriteAdded get _value => super._value as _$_FavoriteAdded;
}

/// @nodoc

class _$_FavoriteAdded implements _FavoriteAdded {
  const _$_FavoriteAdded();

  @override
  String toString() {
    return 'FavoriteState.added()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FavoriteAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() added,
    required TResult Function(String error) error,
  }) {
    return added();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? added,
    TResult Function(String error)? error,
  }) {
    return added?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? added,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavoriteLoaded value) loaded,
    required TResult Function(_FavoriteAdded value) added,
    required TResult Function(_FavoriteError value) error,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteAdded value)? added,
    TResult Function(_FavoriteError value)? error,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteAdded value)? added,
    TResult Function(_FavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _FavoriteAdded implements FavoriteState {
  const factory _FavoriteAdded() = _$_FavoriteAdded;
}

/// @nodoc
abstract class _$$_FavoriteErrorCopyWith<$Res> {
  factory _$$_FavoriteErrorCopyWith(
          _$_FavoriteError value, $Res Function(_$_FavoriteError) then) =
      __$$_FavoriteErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_FavoriteErrorCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$$_FavoriteErrorCopyWith<$Res> {
  __$$_FavoriteErrorCopyWithImpl(
      _$_FavoriteError _value, $Res Function(_$_FavoriteError) _then)
      : super(_value, (v) => _then(v as _$_FavoriteError));

  @override
  _$_FavoriteError get _value => super._value as _$_FavoriteError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_FavoriteError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FavoriteError implements _FavoriteError {
  const _$_FavoriteError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FavoriteState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_FavoriteErrorCopyWith<_$_FavoriteError> get copyWith =>
      __$$_FavoriteErrorCopyWithImpl<_$_FavoriteError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() added,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? added,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? added,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavoriteLoaded value) loaded,
    required TResult Function(_FavoriteAdded value) added,
    required TResult Function(_FavoriteError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteAdded value)? added,
    TResult Function(_FavoriteError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteAdded value)? added,
    TResult Function(_FavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FavoriteError implements FavoriteState {
  const factory _FavoriteError(final String error) = _$_FavoriteError;

  String get error;
  @JsonKey(ignore: true)
  _$$_FavoriteErrorCopyWith<_$_FavoriteError> get copyWith =>
      throw _privateConstructorUsedError;
}
