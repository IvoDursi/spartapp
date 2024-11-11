// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_images_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouriteImagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) get,
    required TResult Function(Image image) save,
    required TResult Function(Image image) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? get,
    TResult? Function(Image image)? save,
    TResult? Function(Image image)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? get,
    TResult Function(Image image)? save,
    TResult Function(Image image)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavouriteImages value) get,
    required TResult Function(SaveFavouriteImage value) save,
    required TResult Function(RemoveFavouriteImage value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavouriteImages value)? get,
    TResult? Function(SaveFavouriteImage value)? save,
    TResult? Function(RemoveFavouriteImage value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavouriteImages value)? get,
    TResult Function(SaveFavouriteImage value)? save,
    TResult Function(RemoveFavouriteImage value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteImagesEventCopyWith<$Res> {
  factory $FavouriteImagesEventCopyWith(FavouriteImagesEvent value,
          $Res Function(FavouriteImagesEvent) then) =
      _$FavouriteImagesEventCopyWithImpl<$Res, FavouriteImagesEvent>;
}

/// @nodoc
class _$FavouriteImagesEventCopyWithImpl<$Res,
        $Val extends FavouriteImagesEvent>
    implements $FavouriteImagesEventCopyWith<$Res> {
  _$FavouriteImagesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFavouriteImagesImplCopyWith<$Res> {
  factory _$$GetFavouriteImagesImplCopyWith(_$GetFavouriteImagesImpl value,
          $Res Function(_$GetFavouriteImagesImpl) then) =
      __$$GetFavouriteImagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$GetFavouriteImagesImplCopyWithImpl<$Res>
    extends _$FavouriteImagesEventCopyWithImpl<$Res, _$GetFavouriteImagesImpl>
    implements _$$GetFavouriteImagesImplCopyWith<$Res> {
  __$$GetFavouriteImagesImplCopyWithImpl(_$GetFavouriteImagesImpl _value,
      $Res Function(_$GetFavouriteImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$GetFavouriteImagesImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetFavouriteImagesImpl implements GetFavouriteImages {
  const _$GetFavouriteImagesImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FavouriteImagesEvent.get(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavouriteImagesImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavouriteImagesImplCopyWith<_$GetFavouriteImagesImpl> get copyWith =>
      __$$GetFavouriteImagesImplCopyWithImpl<_$GetFavouriteImagesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) get,
    required TResult Function(Image image) save,
    required TResult Function(Image image) remove,
  }) {
    return get(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? get,
    TResult? Function(Image image)? save,
    TResult? Function(Image image)? remove,
  }) {
    return get?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? get,
    TResult Function(Image image)? save,
    TResult Function(Image image)? remove,
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
    required TResult Function(GetFavouriteImages value) get,
    required TResult Function(SaveFavouriteImage value) save,
    required TResult Function(RemoveFavouriteImage value) remove,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavouriteImages value)? get,
    TResult? Function(SaveFavouriteImage value)? save,
    TResult? Function(RemoveFavouriteImage value)? remove,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavouriteImages value)? get,
    TResult Function(SaveFavouriteImage value)? save,
    TResult Function(RemoveFavouriteImage value)? remove,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class GetFavouriteImages implements FavouriteImagesEvent {
  const factory GetFavouriteImages({final String? query}) =
      _$GetFavouriteImagesImpl;

  String? get query;
  @JsonKey(ignore: true)
  _$$GetFavouriteImagesImplCopyWith<_$GetFavouriteImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveFavouriteImageImplCopyWith<$Res> {
  factory _$$SaveFavouriteImageImplCopyWith(_$SaveFavouriteImageImpl value,
          $Res Function(_$SaveFavouriteImageImpl) then) =
      __$$SaveFavouriteImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Image image});

  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$SaveFavouriteImageImplCopyWithImpl<$Res>
    extends _$FavouriteImagesEventCopyWithImpl<$Res, _$SaveFavouriteImageImpl>
    implements _$$SaveFavouriteImageImplCopyWith<$Res> {
  __$$SaveFavouriteImageImplCopyWithImpl(_$SaveFavouriteImageImpl _value,
      $Res Function(_$SaveFavouriteImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$SaveFavouriteImageImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res> get image {
    return $ImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc

class _$SaveFavouriteImageImpl implements SaveFavouriteImage {
  const _$SaveFavouriteImageImpl(this.image);

  @override
  final Image image;

  @override
  String toString() {
    return 'FavouriteImagesEvent.save(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFavouriteImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveFavouriteImageImplCopyWith<_$SaveFavouriteImageImpl> get copyWith =>
      __$$SaveFavouriteImageImplCopyWithImpl<_$SaveFavouriteImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) get,
    required TResult Function(Image image) save,
    required TResult Function(Image image) remove,
  }) {
    return save(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? get,
    TResult? Function(Image image)? save,
    TResult? Function(Image image)? remove,
  }) {
    return save?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? get,
    TResult Function(Image image)? save,
    TResult Function(Image image)? remove,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavouriteImages value) get,
    required TResult Function(SaveFavouriteImage value) save,
    required TResult Function(RemoveFavouriteImage value) remove,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavouriteImages value)? get,
    TResult? Function(SaveFavouriteImage value)? save,
    TResult? Function(RemoveFavouriteImage value)? remove,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavouriteImages value)? get,
    TResult Function(SaveFavouriteImage value)? save,
    TResult Function(RemoveFavouriteImage value)? remove,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SaveFavouriteImage implements FavouriteImagesEvent {
  const factory SaveFavouriteImage(final Image image) =
      _$SaveFavouriteImageImpl;

  Image get image;
  @JsonKey(ignore: true)
  _$$SaveFavouriteImageImplCopyWith<_$SaveFavouriteImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavouriteImageImplCopyWith<$Res> {
  factory _$$RemoveFavouriteImageImplCopyWith(_$RemoveFavouriteImageImpl value,
          $Res Function(_$RemoveFavouriteImageImpl) then) =
      __$$RemoveFavouriteImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Image image});

  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$RemoveFavouriteImageImplCopyWithImpl<$Res>
    extends _$FavouriteImagesEventCopyWithImpl<$Res, _$RemoveFavouriteImageImpl>
    implements _$$RemoveFavouriteImageImplCopyWith<$Res> {
  __$$RemoveFavouriteImageImplCopyWithImpl(_$RemoveFavouriteImageImpl _value,
      $Res Function(_$RemoveFavouriteImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$RemoveFavouriteImageImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res> get image {
    return $ImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc

class _$RemoveFavouriteImageImpl implements RemoveFavouriteImage {
  const _$RemoveFavouriteImageImpl(this.image);

  @override
  final Image image;

  @override
  String toString() {
    return 'FavouriteImagesEvent.remove(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavouriteImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavouriteImageImplCopyWith<_$RemoveFavouriteImageImpl>
      get copyWith =>
          __$$RemoveFavouriteImageImplCopyWithImpl<_$RemoveFavouriteImageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) get,
    required TResult Function(Image image) save,
    required TResult Function(Image image) remove,
  }) {
    return remove(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? get,
    TResult? Function(Image image)? save,
    TResult? Function(Image image)? remove,
  }) {
    return remove?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? get,
    TResult Function(Image image)? save,
    TResult Function(Image image)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavouriteImages value) get,
    required TResult Function(SaveFavouriteImage value) save,
    required TResult Function(RemoveFavouriteImage value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFavouriteImages value)? get,
    TResult? Function(SaveFavouriteImage value)? save,
    TResult? Function(RemoveFavouriteImage value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavouriteImages value)? get,
    TResult Function(SaveFavouriteImage value)? save,
    TResult Function(RemoveFavouriteImage value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class RemoveFavouriteImage implements FavouriteImagesEvent {
  const factory RemoveFavouriteImage(final Image image) =
      _$RemoveFavouriteImageImpl;

  Image get image;
  @JsonKey(ignore: true)
  _$$RemoveFavouriteImageImplCopyWith<_$RemoveFavouriteImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
