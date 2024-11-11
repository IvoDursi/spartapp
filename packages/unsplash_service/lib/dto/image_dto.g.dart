// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageDTOImpl _$$ImageDTOImplFromJson(Map<String, dynamic> json) =>
    _$ImageDTOImpl(
      urls: UrlsDTO.fromJson(json['urls'] as Map<String, dynamic>),
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$ImageDTOImplToJson(_$ImageDTOImpl instance) =>
    <String, dynamic>{
      'urls': instance.urls,
      'slug': instance.slug,
    };
