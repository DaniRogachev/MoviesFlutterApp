import 'package:dart_mappable/dart_mappable.dart';

part 'genre_dto.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class GenreDTO with GenreDTOMappable {
  GenreDTO({required this.id, required this.name});

  final int id;
  final String name;

  static GenreDTO fromJson(String json) => GenreDTOMapper.fromJson(json);

  static GenreDTO fromMap(Map<String, dynamic> map) => GenreDTOMapper.fromMap(map);
}
