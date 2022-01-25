import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_model.dart';

part 'order_model.g.dart';

@JsonSerializable()
class OrderModel extends Equatable {
  @JsonKey(name: "object")
  String? object;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "table")
  String? table;
  @JsonKey(name: "guests")
  int? guests;
  @JsonKey(name: "date")
  String? date;
  @JsonKey(name: "items")
  List<ItemModel>? items;


  OrderModel({
    this.object,
    this.id,
    this.table,
    this.guests,
    this.date,
    this.items
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);


  @override
  List<Object?> get props => [
    object,
    id,
    table,
    guests,
    date,
    items
  ];

}