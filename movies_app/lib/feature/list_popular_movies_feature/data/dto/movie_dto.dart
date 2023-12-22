import 'package:dart_mappable/dart_mappable.dart';
import 'package:movies_app/feature/list_popular_movies_feature/data/dto/genre_dto.dart';
part 'movie_dto.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class MovieDTO with MovieDTOMappable {
  MovieDTO(
      {required this.adult,
      required this.backdropPath,
      this.genres,
      required this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.posterPath,
      required this.releaseDate,
      required this.title,
      required this.voteAverage,
      required this.voteCount});

  final bool adult;
  final String backdropPath;
  final List<GenreDTO>? genres;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final String posterPath;
  final String releaseDate;
  final String title;
  final double voteAverage;
  final int voteCount;

  static MovieDTO fromJson(String json) => MovieDTOMapper.fromJson(json);

  static MovieDTO fromMap(Map<String, dynamic> map) =>
      MovieDTOMapper.fromMap(map);
}
