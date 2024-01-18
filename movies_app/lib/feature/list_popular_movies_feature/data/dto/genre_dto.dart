import 'package:json_annotation/json_annotation.dart';

part 'genre_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GenreDTO {
  GenreDTO({required this.id, required this.name});

  factory GenreDTO.fromJson(Map<String, dynamic> json) =>
      _$GenreDTOFromJson(json);

  final int id;
  final String name;

  Map<String, dynamic> toJson() => _$GenreDTOToJson(this);
}
