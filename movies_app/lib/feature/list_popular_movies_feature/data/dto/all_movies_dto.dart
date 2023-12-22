import 'package:dart_mappable/dart_mappable.dart';
import 'package:movies_app/feature/list_popular_movies_feature/data/dto/movie_dto.dart';
part 'all_movies_dto.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class AllMoviesDTO with AllMoviesDTOMappable {
  AllMoviesDTO(
      {required this.page,
      required this.results,
      required this.totalPages,
      required this.totalResults});

  final int page;
  final List<MovieDTO> results;
  final int totalPages;
  final int totalResults;

  static AllMoviesDTO fromJson(String json) =>
      AllMoviesDTOMapper.fromJson(json);

  static AllMoviesDTO fromMap(Map<String, dynamic> map) =>
      AllMoviesDTOMapper.fromMap(map);
}
