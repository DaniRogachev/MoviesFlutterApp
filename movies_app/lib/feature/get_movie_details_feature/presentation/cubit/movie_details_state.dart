import 'package:movies_app/feature/list_popular_movies_feature/domain/entity/movie_entity.dart';

abstract class MovieDetailsState {
  const MovieDetailsState();
}

class MovieDetailsLoadingState extends MovieDetailsState {
  const MovieDetailsLoadingState();
}

class MovieDetailsSuccessState extends MovieDetailsState {
  MovieDetailsSuccessState({required this.movie});

  final MovieEntity movie;
}

class MovieDetailsFailureState extends MovieDetailsState {
  MovieDetailsFailureState({required this.error});

  final String error;
}
