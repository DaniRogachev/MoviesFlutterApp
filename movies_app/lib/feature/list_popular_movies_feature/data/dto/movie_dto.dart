import 'package:movies_app/feature/list_popular_movies_feature/data/dto/genre_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MovieDTO {
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

  factory MovieDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieDTOFromJson(json);

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

  Map<String, dynamic> toJson() => _$MovieDTOToJson(this);

  // static MovieDTO fromJson(Map<String, dynamic> json) => MovieDTOMapper.fromJson(json);

  // static MovieDTO fromMap(Map<String, dynamic> map) =>
  //     MovieDTOMapper.fromMap(map);
}
