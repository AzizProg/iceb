import 'package:iceb/domain/entity/celebrity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'celebrity_model.g.dart';

@JsonSerializable()
class CelebrityModel extends CelebrityEntity {
  CelebrityModel({
    required String id,
    required String name,
    required String biography,
    required String profession,
    required String image,
    required List<String> companies,
  }) : super(
    id: id,
    name: name,
    biography: biography,
    profession: profession,
    image: image,
    companies: companies,
  );

  factory CelebrityModel.fromJson(Map<String, dynamic> json) =>
      _$CelebrityModelFromJson(json);

  Map<String, dynamic> toEntity() => _$CelebrityModelToJson(this);
}
