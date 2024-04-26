import 'package:equatable/equatable.dart';
import 'package:iceb/core/enum/cathegories.dart';

import '../../core/enum/gender.dart';

class CelebrityEntity extends Equatable {
  CelebrityEntity(  {
    required this.id,
    required this.name,
    required this.biography,
    required this.profession,
    required this.companies,
    required this.image,
    required this.category,
    required this.gender,
  });
  final String id;
  final String name;
  final String biography;
  final String profession;
  final List<String> companies;
  final String image;
  final Categories category;
  final Gender gender;

  @override
  List<Object?> get props =>
      [this.id, this.name, this.biography, this.profession, this.companies,this.category,this.gender,this.image];
}
