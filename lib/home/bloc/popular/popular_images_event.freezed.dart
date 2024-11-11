// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_images_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PopularImagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) get,
    required TResult Function() getNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? get,
    TResult? Function()? getNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? get,
    TResult Function()? getNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImages value) get,
    required TResult Function(GetNextImagesPage value) getNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImages value)? get,
    TResult? Function(GetNextImagesPage value)? getNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImages value)? get,
    TResult Function(GetNextImagesPage value)? getNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularImagesEventCopyWith<$Res> {
  factory $PopularImagesEventCopyWith(
          PopularImagesEvent value, $Res Function(PopularImagesEvent) then) =
      _$PopularImagesEventCopyWithImpl<$Res, PopularImagesEvent>;
}

/// @nodoc
class _$PopularImagesEventCopyWithImpl<$Res, $Val extends PopularImagesEvent>
    implements $PopularImagesEventCopyWith<$Res> {
  _$PopularImagesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetImagesImplCopyWith<$Res> {
  factory _$$GetImagesImplCopyWith(
          _$GetImagesImpl value, $Res Function(_$GetImagesImpl) then) =
      __$$GetImagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$GetImagesImplCopyWithImpl<$Res>
    extends _$PopularImagesEventCopyWithImpl<$Res, _$GetImagesImpl>
    implements _$$GetImagesImplCopyWith<$Res> {
  __$$GetImagesImplCopyWithImpl(
      _$GetImagesImpl _value, $Res Function(_$GetImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$GetImagesImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetImagesImpl implements GetImages {
  const _$GetImagesImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'PopularImagesEvent.get(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImagesImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImagesImplCopyWith<_$GetImagesImpl> get copyWith =>
      __$$GetImagesImplCopyWithImpl<_$GetImagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) get,
    required TResult Function() getNextPage,
  }) {
    return get(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? get,
    TResult? Function()? getNextPage,
  }) {
    return get?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? get,
    TResult Function()? getNextPage,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImages value) get,
    required TResult Function(GetNextImagesPage value) getNextPage,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImages value)? get,
    TResult? Function(GetNextImagesPage value)? getNextPage,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImages value)? get,
    TResult Function(GetNextImagesPage value)? getNextPage,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class GetImages implements PopularImagesEvent {
  const factory GetImages({final String? query}) = _$GetImagesImpl;

  String? get query;
  @JsonKey(ignore: true)
  _$$GetImagesImplCopyWith<_$GetImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNextImagesPageImplCopyWith<$Res> {
  factory _$$GetNextImagesPageImplCopyWith(_$GetNextImagesPageImpl value,
          $Res Function(_$GetNextImagesPageImpl) then) =
      __$$GetNextImagesPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNextImagesPageImplCopyWithImpl<$Res>
    extends _$PopularImagesEventCopyWithImpl<$Res, _$GetNextImagesPageImpl>
    implements _$$GetNextImagesPageImplCopyWith<$Res> {
  __$$GetNextImagesPageImplCopyWithImpl(_$GetNextImagesPageImpl _value,
      $Res Function(_$GetNextImagesPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNextImagesPageImpl implements GetNextImagesPage {
  const _$GetNextImagesPageImpl();

  @override
  String toString() {
    return 'PopularImagesEvent.getNextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNextImagesPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) get,
    required TResult Function() getNextPage,
  }) {
    return getNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? get,
    TResult? Function()? getNextPage,
  }) {
    return getNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? get,
    TResult Function()? getNextPage,
    required TResult orElse(),
  }) {
    if (getNextPage != null) {
      return getNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImages value) get,
    required TResult Function(GetNextImagesPage value) getNextPage,
  }) {
    return getNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImages value)? get,
    TResult? Function(GetNextImagesPage value)? getNextPage,
  }) {
    return getNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImages value)? get,
    TResult Function(GetNextImagesPage value)? getNextPage,
    required TResult orElse(),
  }) {
    if (getNextPage != null) {
      return getNextPage(this);
    }
    return orElse();
  }
}

abstract class GetNextImagesPage implements PopularImagesEvent {
  const factory GetNextImagesPage() = _$GetNextImagesPageImpl;
}
