import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_images_event.freezed.dart';

@freezed
class HomeImagesEvent with _$HomeImagesEvent {
  const factory HomeImagesEvent.get() = GetImages;
}
