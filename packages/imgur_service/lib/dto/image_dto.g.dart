// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageDTOImpl _$$ImageDTOImplFromJson(Map<String, dynamic> json) =>
    _$ImageDTOImpl(
      id: json['id'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      datetime: DateTime.parse(json['datetime'] as String),
      type: json['type'] as String,
      animated: json['animated'] as bool,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      views: (json['views'] as num).toInt(),
      bandwidth: (json['bandwidth'] as num).toInt(),
      deletehash: json['deletehash'] as String,
      section: json['section'] as String?,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$ImageDTOImplToJson(_$ImageDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'datetime': instance.datetime.toIso8601String(),
      'type': instance.type,
      'animated': instance.animated,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'views': instance.views,
      'bandwidth': instance.bandwidth,
      'deletehash': instance.deletehash,
      'section': instance.section,
      'link': instance.link,
    };
