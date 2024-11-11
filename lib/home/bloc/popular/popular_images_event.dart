import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_images_event.freezed.dart';

@freezed
class PopularImagesEvent with _$PopularImagesEvent {
  const factory PopularImagesEvent.get({String? query}) = GetImages;

  const factory PopularImagesEvent.getNextPage() = GetNextImagesPage;
}
