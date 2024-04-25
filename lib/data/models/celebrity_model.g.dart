// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'celebrity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CelebrityModel _$CelebrityModelFromJson(Map<String, dynamic> json) =>
    CelebrityModel(
      id: json['id'] as String,
      name: json['name'] as String,
      biography: json['biography'] as String,
      profession: json['profession'] as String,
      image: json['image'] as String,
      companies:
          (json['companies'] as List<dynamic>).map((e) => e as String).toList(),
      cathegory: $enumDecode(_$CathegoriesEnumMap, json['cathegory']),
    );

Map<String, dynamic> _$CelebrityModelToJson(CelebrityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'biography': instance.biography,
      'profession': instance.profession,
      'companies': instance.companies,
      'image': instance.image,
      'cathegory': _$CathegoriesEnumMap[instance.cathegory]!,
    };

const _$CathegoriesEnumMap = {
  Cathegories.media: 'media',
  Cathegories.innovation: 'innovation',
  Cathegories.sport: 'sport',
};
