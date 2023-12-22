import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/feature/get_movie_details_feature/domain/repository_interface/fetch_movie_details_repository.dart';
import 'package:movies_app/feature/get_movie_details_feature/presentation/cubit/movie_details_state.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  MovieDetailsCubit(this.movieDetailsRepository, this.movieId)
      : super(const MovieDetailsLoadingState()) {
    fetchMovieDetails();
  }

  final FetchMovieDetailsRepository movieDetailsRepository;
  final int movieId;

  void fetchMovieDetails() async {
    try {
      var movieDetails =
          await movieDetailsRepository.fetchMovieDetails(movieId);
      emit(MovieDetailsSuccessState(movie: movieDetails));
    } catch (error) {
      emit(MovieDetailsFailureState(error: error.toString()));
    }
  }
}
