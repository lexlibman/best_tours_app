// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      pricePer: json['pricePer'] as String,
      imageUrls: json['imageUrls'] as List<dynamic>,
      peculiarities: json['peculiarities'] as List<dynamic>,
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'pricePer': instance.pricePer,
      'imageUrls': instance.imageUrls,
      'peculiarities': instance.peculiarities,
    };
