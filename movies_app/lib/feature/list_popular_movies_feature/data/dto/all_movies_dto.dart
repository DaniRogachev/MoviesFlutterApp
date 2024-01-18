import 'package:json_annotation/json_annotation.dart';
import 'package:movies_app/feature/list_popular_movies_feature/data/dto/movie_dto.dart';
part 'all_movies_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AllMoviesDTO {
  AllMoviesDTO(
      {required this.page,
      required this.results,
      required this.totalPages,
      required this.totalResults});

  factory AllMoviesDTO.fromJson(Map<String, dynamic> json) =>
      _$AllMoviesDTOFromJson(json);

  final int page;
  final List<MovieDTO> results;
  final int totalPages;
  final int totalResults;

  Map<String, dynamic> toJson() => _$AllMoviesDTOToJson(this);
}
