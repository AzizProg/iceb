import 'package:equatable/equatable.dart';

class CelebrityEntity extends Equatable {
  CelebrityEntity({
    required this.id,
    required this.name,
    required this.biography,
    required this.profession,
    required this.companies,
    required this.image
  });
  final String id;
  final String name;
  final String biography;
  final String profession;
  final List<String> companies;
  final String image;

  @override
  List<Object?> get props =>
      [this.id, this.name, this.biography, this.profession, this.companies];
}
