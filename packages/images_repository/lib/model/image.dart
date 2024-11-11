import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:images_repository/model/model.dart';
import 'package:unsplash_service/unsplash_service.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class Image with _$Image {
  const factory Image({
    required Urls urls,
    required String slug,
  }) = _Image;

  factory Image.fromPostDTO(ImageDTO dto) => Image(
        urls: Urls.fromUrlsDTO(dto.urls),
        slug: dto.slug,
      );

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
