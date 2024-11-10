import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_images_state.freezed.dart';

@freezed
class HomeImagesState with _$HomeImagesState {
  const factory HomeImagesState.initial() = Initial;

  const factory HomeImagesState.loading() = Loading;

  const factory HomeImagesState.loaded({
    required List<String> images,
  }) = Loaded;

  const factory HomeImagesState.failed({
    required String error,
  }) = Failed;
}
