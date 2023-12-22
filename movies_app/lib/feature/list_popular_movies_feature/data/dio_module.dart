import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio dio() => Dio(BaseOptions(headers: {
        'accept': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1NGE0MTRlYjBlZGM4ZmQwNzI5NmNmNDY4ZGM1ZDc0ZiIsInN1YiI6IjY1NzFmMmM4ODU4Njc4MDBjOWNjMmRiMSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.IgD6YMD88AhzH8doVdj3f2d3L_2eDelAH0hU8ciUfj4',
      }));
}
