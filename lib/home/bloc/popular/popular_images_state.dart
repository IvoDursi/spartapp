import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:images_repository/images_repository.dart';

part 'popular_images_state.freezed.dart';

@freezed
class PopularImagesState with _$PopularImagesState {
  const factory PopularImagesState.initial() = Initial;

  const factory PopularImagesState.loading() = Loading;

  const factory PopularImagesState.loaded({
    required List<Image> images,
  }) = Loaded;

  const factory PopularImagesState.failed({
    required String error,
  }) = Failed;
}
