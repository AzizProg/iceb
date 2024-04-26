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
      category: $enumDecode(_$CategoriesEnumMap, json['category']),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
    );

Map<String, dynamic> _$CelebrityModelToJson(CelebrityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'biography': instance.biography,
      'profession': instance.profession,
      'companies': instance.companies,
      'image': instance.image,
      'category': _$CategoriesEnumMap[instance.category]!,
      'gender': _$GenderEnumMap[instance.gender]!,
    };

const _$CategoriesEnumMap = {
  Categories.communication: 'communication',
  Categories.innovation: 'innovation',
  Categories.sport: 'sport',
};

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};
