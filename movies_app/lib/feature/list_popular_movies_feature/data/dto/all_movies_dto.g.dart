// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_movies_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllMoviesDTO _$AllMoviesDTOFromJson(Map<String, dynamic> json) => AllMoviesDTO(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$AllMoviesDTOToJson(AllMoviesDTO instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
