import 'package:freezed_annotation/freezed_annotation.dart';

import '../option/option_model.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  QuestionModel._();

  factory QuestionModel({
    int? number,
    String? text,
    String? image,
    List<OptionModel>? options,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}
