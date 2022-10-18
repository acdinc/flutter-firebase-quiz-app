import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../quiz/models/quiz/quiz_model.dart';

part 'topic_model.freezed.dart';
part 'topic_model.g.dart';

@freezed
class TopicModel with _$TopicModel {
  TopicModel._();

  factory TopicModel({
    String? id,
    String? text,
    String? desc,
    int? percent,
    List<QuizModel>? quizzes,
  }) = _TopicModel;

  factory TopicModel.fromJson(Map<String, dynamic> json) =>
      _$TopicModelFromJson(json);

  String get imagePath => 'assets/images/$id.png';
}
