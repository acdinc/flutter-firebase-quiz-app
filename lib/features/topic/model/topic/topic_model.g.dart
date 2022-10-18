// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopicModel _$$_TopicModelFromJson(Map<String, dynamic> json) =>
    _$_TopicModel(
      id: json['id'] as String?,
      text: json['text'] as String?,
      desc: json['desc'] as String?,
      percent: json['percent'] as int?,
      quizzes: (json['quizzes'] as List<dynamic>?)
          ?.map((e) => QuizModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TopicModelToJson(_$_TopicModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'desc': instance.desc,
      'percent': instance.percent,
      'quizzes': instance.quizzes,
    };
