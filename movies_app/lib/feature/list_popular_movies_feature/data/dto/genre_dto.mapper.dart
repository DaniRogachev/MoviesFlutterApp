// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'genre_dto.dart';

class GenreDTOMapper extends ClassMapperBase<GenreDTO> {
  GenreDTOMapper._();

  static GenreDTOMapper? _instance;
  static GenreDTOMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GenreDTOMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GenreDTO';

  static int _$id(GenreDTO v) => v.id;
  static const Field<GenreDTO, int> _f$id = Field('id', _$id);
  static String _$name(GenreDTO v) => v.name;
  static const Field<GenreDTO, String> _f$name = Field('name', _$name);

  @override
  final Map<Symbol, Field<GenreDTO, dynamic>> fields = const {
    #id: _f$id,
    #name: _f$name,
  };

  static GenreDTO _instantiate(DecodingData data) {
    return GenreDTO(id: data.dec(_f$id), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static GenreDTO fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GenreDTO>(map);
  }

  static GenreDTO fromJson(String json) {
    return ensureInitialized().decodeJson<GenreDTO>(json);
  }
}

mixin GenreDTOMappable {
  String toJson() {
    return GenreDTOMapper.ensureInitialized()
        .encodeJson<GenreDTO>(this as GenreDTO);
  }

  Map<String, dynamic> toMap() {
    return GenreDTOMapper.ensureInitialized()
        .encodeMap<GenreDTO>(this as GenreDTO);
  }

  GenreDTOCopyWith<GenreDTO, GenreDTO, GenreDTO> get copyWith =>
      _GenreDTOCopyWithImpl(this as GenreDTO, $identity, $identity);
  @override
  String toString() {
    return GenreDTOMapper.ensureInitialized().stringifyValue(this as GenreDTO);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            GenreDTOMapper.ensureInitialized()
                .isValueEqual(this as GenreDTO, other));
  }

  @override
  int get hashCode {
    return GenreDTOMapper.ensureInitialized().hashValue(this as GenreDTO);
  }
}

extension GenreDTOValueCopy<$R, $Out> on ObjectCopyWith<$R, GenreDTO, $Out> {
  GenreDTOCopyWith<$R, GenreDTO, $Out> get $asGenreDTO =>
      $base.as((v, t, t2) => _GenreDTOCopyWithImpl(v, t, t2));
}

abstract class GenreDTOCopyWith<$R, $In extends GenreDTO, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? name});
  GenreDTOCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GenreDTOCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GenreDTO, $Out>
    implements GenreDTOCopyWith<$R, GenreDTO, $Out> {
  _GenreDTOCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GenreDTO> $mapper =
      GenreDTOMapper.ensureInitialized();
  @override
  $R call({int? id, String? name}) => $apply(FieldCopyWithData(
      {if (id != null) #id: id, if (name != null) #name: name}));
  @override
  GenreDTO $make(CopyWithData data) => GenreDTO(
      id: data.get(#id, or: $value.id), name: data.get(#name, or: $value.name));

  @override
  GenreDTOCopyWith<$R2, GenreDTO, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GenreDTOCopyWithImpl($value, $cast, t);
}
