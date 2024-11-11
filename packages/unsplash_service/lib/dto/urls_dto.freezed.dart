// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'urls_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UrlsDTO _$UrlsDTOFromJson(Map<String, dynamic> json) {
  return _UrlsDTO.fromJson(json);
}

/// @nodoc
mixin _$UrlsDTO {
  String get raw => throw _privateConstructorUsedError;
  String get full => throw _privateConstructorUsedError;
  String get regular => throw _privateConstructorUsedError;

  /// Serializes this UrlsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UrlsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UrlsDTOCopyWith<UrlsDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsDTOCopyWith<$Res> {
  factory $UrlsDTOCopyWith(UrlsDTO value, $Res Function(UrlsDTO) then) =
      _$UrlsDTOCopyWithImpl<$Res, UrlsDTO>;
  @useResult
  $Res call({String raw, String full, String regular});
}

/// @nodoc
class _$UrlsDTOCopyWithImpl<$Res, $Val extends UrlsDTO>
    implements $UrlsDTOCopyWith<$Res> {
  _$UrlsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UrlsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? full = null,
    Object? regular = null,
  }) {
    return _then(_value.copyWith(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrlsDTOImplCopyWith<$Res> implements $UrlsDTOCopyWith<$Res> {
  factory _$$UrlsDTOImplCopyWith(
          _$UrlsDTOImpl value, $Res Function(_$UrlsDTOImpl) then) =
      __$$UrlsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String raw, String full, String regular});
}

/// @nodoc
class __$$UrlsDTOImplCopyWithImpl<$Res>
    extends _$UrlsDTOCopyWithImpl<$Res, _$UrlsDTOImpl>
    implements _$$UrlsDTOImplCopyWith<$Res> {
  __$$UrlsDTOImplCopyWithImpl(
      _$UrlsDTOImpl _value, $Res Function(_$UrlsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of UrlsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? full = null,
    Object? regular = null,
  }) {
    return _then(_$UrlsDTOImpl(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlsDTOImpl implements _UrlsDTO {
  const _$UrlsDTOImpl(
      {required this.raw, required this.full, required this.regular});

  factory _$UrlsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlsDTOImplFromJson(json);

  @override
  final String raw;
  @override
  final String full;
  @override
  final String regular;

  @override
  String toString() {
    return 'UrlsDTO(raw: $raw, full: $full, regular: $regular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlsDTOImpl &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.regular, regular) || other.regular == regular));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, raw, full, regular);

  /// Create a copy of UrlsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlsDTOImplCopyWith<_$UrlsDTOImpl> get copyWith =>
      __$$UrlsDTOImplCopyWithImpl<_$UrlsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlsDTOImplToJson(
      this,
    );
  }
}

abstract class _UrlsDTO implements UrlsDTO {
  const factory _UrlsDTO(
      {required final String raw,
      required final String full,
      required final String regular}) = _$UrlsDTOImpl;

  factory _UrlsDTO.fromJson(Map<String, dynamic> json) = _$UrlsDTOImpl.fromJson;

  @override
  String get raw;
  @override
  String get full;
  @override
  String get regular;

  /// Create a copy of UrlsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlsDTOImplCopyWith<_$UrlsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
