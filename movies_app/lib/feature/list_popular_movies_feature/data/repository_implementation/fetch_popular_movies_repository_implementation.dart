import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/feature/list_popular_movies_feature/data/dto/all_movies_dto.dart';
import 'package:movies_app/feature/list_popular_movies_feature/domain/entity/movie_entity.dart';
import 'package:movies_app/feature/list_popular_movies_feature/domain/repository_interface/fetch_popular_movies_repository.dart';
import 'package:movies_app/feature/list_popular_movies_feature/movie_mapper.dart';
import 'package:movies_app/injection.dart';

@Singleton(as: FetchPopularMoviesRepository)
class FetchPopularMoviesRepositoryImplementation
    implements FetchPopularMoviesRepository {
  FetchPopularMoviesRepositoryImplementation(this._dio);

  final Dio _dio;

  @override
  Future<List<MovieEntity>> fetchPopularMovies(int currPage) async {
    final response = await _dio
        .get("https://api.themoviedb.org/3/movie/popular?page=$currPage");
    if (response.statusCode == 200) {
      final allMoviesDTO = AllMoviesDTO.fromMap(response.data);
      List<MovieEntity> result = [];
      result = allMoviesDTO.results
          .map((movieDTO) =>
              getIt<MovieMapper>().mapMovieDTOToMovieEntity(movieDTO))
          .toList();
      currPage++;
      return result;
    }
    throw Exception('Failed to load the movies');
  }
}
