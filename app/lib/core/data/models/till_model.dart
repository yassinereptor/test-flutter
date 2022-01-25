import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_model.dart';

part 'till_model.g.dart';

// Global Model
@JsonSerializable()
class TillModel extends Equatable {
  @JsonKey(name: "object")
  String? object;
  @JsonKey(name: "orders")
  List<OrderModel>? orders;

  TillModel({
    this.object,
    this.orders
  });

  factory TillModel.fromJson(Map<String, dynamic> json) =>
      _$TillModelFromJson(json);

  Map<String, dynamic> toJson() => _$TillModelToJson(this);


  @override
  List<Object?> get props => [object, orders];

}