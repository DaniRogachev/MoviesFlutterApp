import 'package:injectable/injectable.dart';
import 'package:movies_app/feature/list_popular_movies_feature/data/dto/movie_dto.dart';
import 'package:movies_app/feature/list_popular_movies_feature/domain/entity/movie_entity.dart';

@singleton
class MovieMapper {
  MovieEntity mapMovieDTOToMovieEntity(MovieDTO movieDTO) {
    List<String> genres = [];
    for (var genre in movieDTO.genres ?? []) {
      genres.add(genre.name);
    }
    return MovieEntity(
        adult: movieDTO.adult,
        backdropPath: movieDTO.backdropPath,
        genres: genres,
        id: movieDTO.id,
        originalLanguage: movieDTO.originalLanguage,
        originalTitle: movieDTO.originalTitle,
        overview: movieDTO.overview,
        posterPath: movieDTO.posterPath,
        releaseDate: DateTime.parse(movieDTO.releaseDate),
        title: movieDTO.title,
        voteAverage: movieDTO.voteAverage,
        voteCount: movieDTO.voteCount);
  }
}
