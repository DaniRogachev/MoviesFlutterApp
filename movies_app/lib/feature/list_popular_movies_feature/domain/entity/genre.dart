import 'package:dart_mappable/dart_mappable.dart';

part 'genre.mapper.dart';

@MappableClass()
class Genre with GenreMappable {
  Genre({required this.id, this.name});

  final int id;
  final String? name;
}
