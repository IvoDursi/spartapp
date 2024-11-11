import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unsplash_service/unsplash_service.dart';

part 'image_dto.freezed.dart';
part 'image_dto.g.dart';

@freezed
class ImageDTO with _$ImageDTO {
  const factory ImageDTO({
    required UrlsDTO urls,
    required String slug,
  }) = _ImageDTO;

  factory ImageDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageDTOFromJson(json);
}
