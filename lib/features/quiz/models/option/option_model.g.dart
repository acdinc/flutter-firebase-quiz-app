// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OptionModel _$$_OptionModelFromJson(Map<String, dynamic> json) =>
    _$_OptionModel(
      text: json['text'] as String?,
      isCorrect: json['isCorrect'] as bool?,
      image: json['image'] as String?,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$$_OptionModelToJson(_$_OptionModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'isCorrect': instance.isCorrect,
      'image': instance.image,
      'detail': instance.detail,
    };
