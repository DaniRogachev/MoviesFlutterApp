import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/feature/list_popular_movies_feature/domain/entity/movie_entity.dart';
import 'package:movies_app/feature/list_popular_movies_feature/domain/repository_interface/fetch_popular_movies_repository.dart';
import 'package:movies_app/feature/list_popular_movies_feature/presentation/cubit/popular_movies_state.dart';

@injectable
class PopularMoviesCubit extends Cubit<PopularMoviesState> {
  PopularMoviesCubit(this.popularMoviesRepository)
      : super(PopularMoviesLoadingState()) {
    fetchPopularMovies();
  }

  final FetchPopularMoviesRepository popularMoviesRepository;

  void fetchPopularMovies() async {
    try {
      final List<MovieEntity> movies = await popularMoviesRepository
          .fetchPopularMovies(PopularMoviesState.currPage);
      PopularMoviesState.currPage++;
      emit(PopularMoviesSuccessState(movies: movies));
    } catch (error) {
      emit(PopularMoviesFailureState(error.toString()));
    }
  }

  void fetchNext() async {
    try {
      final List<MovieEntity> updatedMovies = state.movies +
          await popularMoviesRepository
              .fetchPopularMovies(PopularMoviesState.currPage);
      PopularMoviesState.currPage++;
      emit(PopularMoviesSuccessState(movies: updatedMovies));
    } catch (error) {
      emit(PopularMoviesFailureState(error.toString()));
    }
  }
}
