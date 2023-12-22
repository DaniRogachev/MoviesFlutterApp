import 'package:movies_app/feature/list_popular_movies_feature/domain/entity/movie_entity.dart';

abstract class PopularMoviesState {
  PopularMoviesState(this.movies);

  final List<MovieEntity> movies;
  static int currPage = 1;
}

class PopularMoviesLoadingState extends PopularMoviesState {
  PopularMoviesLoadingState() : super([]);
}

class PopularMoviesSuccessState extends PopularMoviesState {
  PopularMoviesSuccessState({required List<MovieEntity> movies})
      : super(movies);
}

class PopularMoviesFailureState extends PopularMoviesState {
  PopularMoviesFailureState(this.error) : super([]);

  final String error;
}
