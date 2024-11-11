import 'package:freezed_annotation/freezed_annotation.dart';

part 'urls_dto.freezed.dart';
part 'urls_dto.g.dart';

@freezed
class UrlsDTO with _$UrlsDTO {
  const factory UrlsDTO({
    required String raw,
    required String full,
    required String regular,
  }) = _UrlsDTO;

  factory UrlsDTO.fromJson(Map<String, dynamic> json) =>
      _$UrlsDTOFromJson(json);
}
