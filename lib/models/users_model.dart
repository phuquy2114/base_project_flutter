
import 'package:json_annotation/json_annotation.dart';

part 'users_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'address')
  String? address;

  @JsonKey(name: 'zip_code')
  String? zipCode;

  UserModel ();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
