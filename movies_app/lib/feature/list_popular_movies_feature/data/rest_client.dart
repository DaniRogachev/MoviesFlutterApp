import 'package:dio/dio.dart';
import 'package:movies_app/feature/list_popular_movies_feature/data/dto/all_movies_dto.dart';
import 'package:movies_app/feature/list_popular_movies_feature/data/dto/movie_dto.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/3/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/movie/{movieId}')
  Future<MovieDTO> getMovieDetails(@Path('movieId') String id);

  @GET('/movie/popular')
  Future<AllMoviesDTO> getPopularMovies(@Query('page') int page);
}
