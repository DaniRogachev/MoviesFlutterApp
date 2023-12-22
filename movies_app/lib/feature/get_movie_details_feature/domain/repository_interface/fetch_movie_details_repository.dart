import 'package:movies_app/feature/list_popular_movies_feature/domain/entity/movie_entity.dart';

abstract class FetchMovieDetailsRepository {
  Future<MovieEntity> fetchMovieDetails(int movieId);
}
