import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_dto.freezed.dart';
part 'image_dto.g.dart';

@freezed
class ImageDTO with _$ImageDTO {
  const factory ImageDTO({
    required String id,
    String? title,
    String? description,
    required DateTime datetime,
    required String type,
    required bool animated,
    required int width,
    required int height,
    required int size,
    required int views,
    required int bandwidth,
    required String deletehash,
    String? section,
    required String link,
  }) = _ImageDTO;

  factory ImageDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageDTOFromJson(json);
}
