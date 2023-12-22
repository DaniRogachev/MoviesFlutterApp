// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app_router.dart' as _i3;
import 'feature/get_movie_details_feature/data/repository_implementation/fetch_movie_details_repository_implementation.dart'
    as _i6;
import 'feature/get_movie_details_feature/domain/repository_interface/fetch_movie_details_repository.dart'
    as _i5;
import 'feature/list_popular_movies_feature/data/dio_module.dart' as _i11;
import 'feature/list_popular_movies_feature/data/repository_implementation/fetch_popular_movies_repository_implementation.dart'
    as _i8;
import 'feature/list_popular_movies_feature/domain/repository_interface/fetch_popular_movies_repository.dart'
    as _i7;
import 'feature/list_popular_movies_feature/movie_mapper.dart' as _i9;
import 'feature/list_popular_movies_feature/presentation/cubit/popular_movies_cubit.dart'
    as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.Dio>(() => dioModule.dio());
    gh.singleton<_i5.FetchMovieDetailsRepository>(
        _i6.FetchMovieDetailsRepositoryImplementation(dio: gh<_i4.Dio>()));
    gh.singleton<_i7.FetchPopularMoviesRepository>(
        _i8.FetchPopularMoviesRepositoryImplementation(gh<_i4.Dio>()));
    gh.singleton<_i9.MovieMapper>(_i9.MovieMapper());
    gh.factory<_i10.PopularMoviesCubit>(
        () => _i10.PopularMoviesCubit(gh<_i7.FetchPopularMoviesRepository>()));
    return this;
  }
}

class _$DioModule extends _i11.DioModule {}
