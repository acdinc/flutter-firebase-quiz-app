import 'package:freezed_annotation/freezed_annotation.dart';

import '../question/question_model.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
class QuizModel with _$QuizModel {
  QuizModel._();

  factory QuizModel({
    String? id,
    String? title,
    String? topic,
    String? subTitle,
    List<QuestionModel>? questions,
  }) = _QuizModel;

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);
}
