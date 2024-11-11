import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:images_repository/model/model.dart';

part 'favourite_images_state.freezed.dart';

@freezed
class FavouriteImagesState with _$FavouriteImagesState {
  const factory FavouriteImagesState.initial() = Initial;

  const factory FavouriteImagesState.loading() = Loading;

  const factory FavouriteImagesState.loaded({
    required List<Image?> images,
  }) = Loaded;

  const factory FavouriteImagesState.failed({
    required String error,
  }) = Failed;
}
