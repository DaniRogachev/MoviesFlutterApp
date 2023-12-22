import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/feature/get_movie_details_feature/domain/repository_interface/fetch_movie_details_repository.dart';
import 'package:movies_app/feature/list_popular_movies_feature/data/dto/movie_dto.dart';
import 'package:movies_app/feature/list_popular_movies_feature/domain/entity/movie_entity.dart';
import 'package:movies_app/feature/list_popular_movies_feature/movie_mapper.dart';
import 'package:movies_app/injection.dart';

@Singleton(as: FetchMovieDetailsRepository)
class FetchMovieDetailsRepositoryImplementation
    implements FetchMovieDetailsRepository {
  FetchMovieDetailsRepositoryImplementation({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<MovieEntity> fetchMovieDetails(int movieId) async {
    final response =
        await _dio.get('https://api.themoviedb.org/3/movie/$movieId');
    if (response.statusCode == 200) {
      final movieDTO = MovieDTO.fromMap(response.data);
      return getIt<MovieMapper>().mapMovieDTOToMovieEntity(movieDTO);
    } else {
      throw Exception('Failed to load Movie details');
    }
  }
}
