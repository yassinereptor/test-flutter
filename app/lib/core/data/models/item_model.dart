import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.g.dart';

// Item Model
@JsonSerializable()
class ItemModel extends Equatable {
  @JsonKey(name: "object")
  String? object;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "price")
  double? price;
  @JsonKey(name: "currency")
  String? currency;
  @JsonKey(name: "color")
  String? color;


  ItemModel({
    this.object,
    this.id,
    this.name,
    this.price,
    this.currency,
    this.color
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemModelToJson(this);


  @override
  List<Object?> get props => [
    object,
    id,
    name,
    price,
    currency,
    color
  ];

}