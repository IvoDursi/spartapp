import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:images_repository/model/model.dart';

part 'favourite_images_event.freezed.dart';

@freezed
class FavouriteImagesEvent with _$FavouriteImagesEvent {
  const factory FavouriteImagesEvent.get({String? query}) = GetFavouriteImages;

  const factory FavouriteImagesEvent.save(Image image) = SaveFavouriteImage;

  const factory FavouriteImagesEvent.remove(Image image) = RemoveFavouriteImage;
}
