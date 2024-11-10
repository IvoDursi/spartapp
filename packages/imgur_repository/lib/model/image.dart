import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:imgur_service/dto/image_dto.dart';

part 'image.freezed.dart';

@freezed
class Image with _$Image {
  const factory Image({
    required String id,
    required DateTime datetime,
    required String type,
    required bool animated,
    required int width,
    required int height,
    required int size,
    required int views,
    required int bandwidth,
    required String deletehash,
    required String link,
    String? section,
    String? title,
    String? description,
  }) = _Image;

  factory Image.fromPostDTO(ImageDTO dto) => Image(
        id: dto.id,
        title: dto.title,
        description: dto.description,
        datetime: dto.datetime,
        type: dto.type,
        animated: dto.animated,
        width: dto.width,
        height: dto.height,
        size: dto.size,
        views: dto.views,
        bandwidth: dto.bandwidth,
        deletehash: dto.deletehash,
        section: dto.section,
        link: dto.link,
      );
}
