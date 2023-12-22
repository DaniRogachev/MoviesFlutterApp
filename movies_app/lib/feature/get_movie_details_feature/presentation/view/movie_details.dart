import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/feature/get_movie_details_feature/domain/repository_interface/fetch_movie_details_repository.dart';
import 'package:movies_app/feature/get_movie_details_feature/presentation/cubit/movie_details_cubit.dart';
import 'package:movies_app/feature/get_movie_details_feature/presentation/cubit/movie_details_state.dart';
import 'package:movies_app/injection.dart';

@RoutePage()
class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key, required this.movieId});

  final int movieId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          MovieDetailsCubit(getIt<FetchMovieDetailsRepository>(), movieId),
      child: BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
        builder: (context, state) {
          if (state is MovieDetailsSuccessState) {
            var imgPath = state.movie.posterPath;
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  state.movie.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 5, 42, 73),
                    decoration: TextDecoration.none,
                  ),
                ),
                backgroundColor: Colors.white,
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      state.movie.originalTitle,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Image.network(
                      "https://image.tmdb.org/t/p/w500$imgPath",
                      width: 400,
                      height: 400,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Genres: ${state.movie.genres.join(', ')}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      state.movie.overview,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Rating: ${state.movie.voteAverage.toString()} (${state.movie.voteCount.toString()})",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            );
          } else if (state is MovieDetailsFailureState) {
            return Scaffold(
              body: Center(
                child: Text(state.error),
              ),
            );
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
