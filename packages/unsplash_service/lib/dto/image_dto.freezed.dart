// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageDTO _$ImageDTOFromJson(Map<String, dynamic> json) {
  return _ImageDTO.fromJson(json);
}

/// @nodoc
mixin _$ImageDTO {
  UrlsDTO get urls => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  /// Serializes this ImageDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageDTOCopyWith<ImageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDTOCopyWith<$Res> {
  factory $ImageDTOCopyWith(ImageDTO value, $Res Function(ImageDTO) then) =
      _$ImageDTOCopyWithImpl<$Res, ImageDTO>;
  @useResult
  $Res call({UrlsDTO urls, String slug});

  $UrlsDTOCopyWith<$Res> get urls;
}

/// @nodoc
class _$ImageDTOCopyWithImpl<$Res, $Val extends ImageDTO>
    implements $ImageDTOCopyWith<$Res> {
  _$ImageDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urls = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as UrlsDTO,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ImageDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UrlsDTOCopyWith<$Res> get urls {
    return $UrlsDTOCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImageDTOImplCopyWith<$Res>
    implements $ImageDTOCopyWith<$Res> {
  factory _$$ImageDTOImplCopyWith(
          _$ImageDTOImpl value, $Res Function(_$ImageDTOImpl) then) =
      __$$ImageDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UrlsDTO urls, String slug});

  @override
  $UrlsDTOCopyWith<$Res> get urls;
}

/// @nodoc
class __$$ImageDTOImplCopyWithImpl<$Res>
    extends _$ImageDTOCopyWithImpl<$Res, _$ImageDTOImpl>
    implements _$$ImageDTOImplCopyWith<$Res> {
  __$$ImageDTOImplCopyWithImpl(
      _$ImageDTOImpl _value, $Res Function(_$ImageDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urls = null,
    Object? slug = null,
  }) {
    return _then(_$ImageDTOImpl(
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as UrlsDTO,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageDTOImpl implements _ImageDTO {
  const _$ImageDTOImpl({required this.urls, required this.slug});

  factory _$ImageDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDTOImplFromJson(json);

  @override
  final UrlsDTO urls;
  @override
  final String slug;

  @override
  String toString() {
    return 'ImageDTO(urls: $urls, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDTOImpl &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, urls, slug);

  /// Create a copy of ImageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDTOImplCopyWith<_$ImageDTOImpl> get copyWith =>
      __$$ImageDTOImplCopyWithImpl<_$ImageDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDTOImplToJson(
      this,
    );
  }
}

abstract class _ImageDTO implements ImageDTO {
  const factory _ImageDTO(
      {required final UrlsDTO urls,
      required final String slug}) = _$ImageDTOImpl;

  factory _ImageDTO.fromJson(Map<String, dynamic> json) =
      _$ImageDTOImpl.fromJson;

  @override
  UrlsDTO get urls;
  @override
  String get slug;

  /// Create a copy of ImageDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageDTOImplCopyWith<_$ImageDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
