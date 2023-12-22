import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/app_router.gr.dart';
import 'package:movies_app/feature/list_popular_movies_feature/domain/repository_interface/fetch_popular_movies_repository.dart';
import 'package:movies_app/feature/list_popular_movies_feature/presentation/cubit/popular_movies_cubit.dart';
import 'package:movies_app/feature/list_popular_movies_feature/presentation/cubit/popular_movies_state.dart';
import 'package:movies_app/injection.dart';

class MovieList extends StatelessWidget {
  MovieList({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PopularMoviesCubit(getIt<FetchPopularMoviesRepository>()),
      child: BlocBuilder<PopularMoviesCubit, PopularMoviesState>(
          builder: (context, state) {
        if (state is PopularMoviesSuccessState) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            controller: _scrollController,
            itemCount: state.movies.length,
            itemBuilder: (context, index) {
              _scrollController.addListener(() {
                if (_scrollController.position.pixels ==
                    _scrollController.position.maxScrollExtent) {
                  BlocProvider.of<PopularMoviesCubit>(context).fetchNext();
                }
              });

              return Card(
                elevation: 4,
                margin: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    AutoRouter.of(context).push(MovieDetailsRoute(
                      movieId: state.movies[index].id,
                    ));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Image.network(
                          "https://image.tmdb.org/t/p/w500${state.movies[index].backdropPath}",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          state.movies[index].title,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else if (state is PopularMoviesFailureState) {
          return Text(state.error);
        } else {
          return const CircularProgressIndicator();
        }
      }),
    );
  }
}
