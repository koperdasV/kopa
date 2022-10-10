// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      idProduct: json['idProduct'] as String,
      imageUrl: json['imageUrl'] as String,
      size: json['size'] as int,
      width: json['width'] as int,
      heigth: json['heigth'] as int,
      model: json['model'] as String,
      material: json['material'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'idProduct': instance.idProduct,
      'imageUrl': instance.imageUrl,
      'size': instance.size,
      'width': instance.width,
      'heigth': instance.heigth,
      'model': instance.model,
      'material': instance.material,
      'description': instance.description,
      'price': instance.price,
    };
