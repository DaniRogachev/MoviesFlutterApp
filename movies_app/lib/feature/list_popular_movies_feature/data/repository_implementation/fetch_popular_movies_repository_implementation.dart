import 'package:injectable/injectable.dart';
import 'package:movies_app/feature/list_popular_movies_feature/data/rest_client.dart';
import 'package:movies_app/feature/list_popular_movies_feature/domain/entity/movie_entity.dart';
import 'package:movies_app/feature/list_popular_movies_feature/domain/repository_interface/fetch_popular_movies_repository.dart';
import 'package:movies_app/feature/list_popular_movies_feature/movie_mapper.dart';

@Singleton(as: FetchPopularMoviesRepository)
class FetchPopularMoviesRepositoryImplementation
    implements FetchPopularMoviesRepository {
  FetchPopularMoviesRepositoryImplementation(this._client, this._movieMapper);

  final RestClient _client;
  final MovieMapper _movieMapper;

  @override
  Future<List<MovieEntity>> fetchPopularMovies(int currPage) async {
    final allMoviesDTO = await _client.getPopularMovies(currPage);
    return allMoviesDTO.results
        .map((movieDTO) =>
            _movieMapper.mapMovieDTOToMovieEntity(movieDTO))
        .toList();
  }
}
