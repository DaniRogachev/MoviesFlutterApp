import 'package:injectable/injectable.dart';
import 'package:movies_app/feature/get_movie_details_feature/domain/repository_interface/fetch_movie_details_repository.dart';
import 'package:movies_app/feature/list_popular_movies_feature/data/rest_client.dart';
import 'package:movies_app/feature/list_popular_movies_feature/domain/entity/movie_entity.dart';
import 'package:movies_app/feature/list_popular_movies_feature/movie_mapper.dart';

@Singleton(as: FetchMovieDetailsRepository)
class FetchMovieDetailsRepositoryImplementation
    implements FetchMovieDetailsRepository {
  FetchMovieDetailsRepositoryImplementation(this._client, this._movieMapper);

  final RestClient _client;
  final MovieMapper _movieMapper;

  @override
  Future<MovieEntity> fetchMovieDetails(int movieId) async {
    final movieDTO = await _client.getMovieDetails(movieId.toString());
    return _movieMapper.mapMovieDTOToMovieEntity(movieDTO);
  }
}
