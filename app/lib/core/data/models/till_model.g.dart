// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'till_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TillModel _$TillModelFromJson(Map<String, dynamic> json) {
  return TillModel(
    object: json['object'] as String?,
    orders: (json['orders'] as List<dynamic>?)
        ?.map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TillModelToJson(TillModel instance) => <String, dynamic>{
      'object': instance.object,
      'orders': instance.orders,
    };
