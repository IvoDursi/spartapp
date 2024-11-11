import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unsplash_service/unsplash_service.dart';

part 'urls.freezed.dart';
part 'urls.g.dart';

@freezed
class Urls with _$Urls {
  const factory Urls({
    required String raw,
    required String full,
    required String regular,
  }) = _Urls;

  factory Urls.fromUrlsDTO(UrlsDTO dto) => Urls(
        raw: dto.raw,
        full: dto.full,
        regular: dto.regular,
      );

  factory Urls.fromJson(Map<String, dynamic> json) => _$UrlsFromJson(json);
}
