// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get idProduct => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get heigth => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get material => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String idProduct,
      String imageUrl,
      int size,
      int width,
      int heigth,
      String model,
      String material,
      String description,
      int price});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? idProduct = freezed,
    Object? imageUrl = freezed,
    Object? size = freezed,
    Object? width = freezed,
    Object? heigth = freezed,
    Object? model = freezed,
    Object? material = freezed,
    Object? description = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      idProduct: idProduct == freezed
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      heigth: heigth == freezed
          ? _value.heigth
          : heigth // ignore: cast_nullable_to_non_nullable
              as int,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      material: material == freezed
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String idProduct,
      String imageUrl,
      int size,
      int width,
      int heigth,
      String model,
      String material,
      String description,
      int price});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, (v) => _then(v as _$_Product));

  @override
  _$_Product get _value => super._value as _$_Product;

  @override
  $Res call({
    Object? idProduct = freezed,
    Object? imageUrl = freezed,
    Object? size = freezed,
    Object? width = freezed,
    Object? heigth = freezed,
    Object? model = freezed,
    Object? material = freezed,
    Object? description = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_Product(
      idProduct: idProduct == freezed
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      heigth: heigth == freezed
          ? _value.heigth
          : heigth // ignore: cast_nullable_to_non_nullable
              as int,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      material: material == freezed
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product extends _Product {
  const _$_Product(
      {required this.idProduct,
      required this.imageUrl,
      required this.size,
      required this.width,
      required this.heigth,
      required this.model,
      required this.material,
      required this.description,
      required this.price})
      : super._();

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final String idProduct;
  @override
  final String imageUrl;
  @override
  final int size;
  @override
  final int width;
  @override
  final int heigth;
  @override
  final String model;
  @override
  final String material;
  @override
  final String description;
  @override
  final int price;

  @override
  String toString() {
    return 'Product(idProduct: $idProduct, imageUrl: $imageUrl, size: $size, width: $width, heigth: $heigth, model: $model, material: $material, description: $description, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            const DeepCollectionEquality().equals(other.idProduct, idProduct) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.heigth, heigth) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.material, material) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idProduct),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(heigth),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(material),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product extends Product {
  const factory _Product(
      {required final String idProduct,
      required final String imageUrl,
      required final int size,
      required final int width,
      required final int heigth,
      required final String model,
      required final String material,
      required final String description,
      required final int price}) = _$_Product;
  const _Product._() : super._();

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get idProduct;
  @override
  String get imageUrl;
  @override
  int get size;
  @override
  int get width;
  @override
  int get heigth;
  @override
  String get model;
  @override
  String get material;
  @override
  String get description;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
