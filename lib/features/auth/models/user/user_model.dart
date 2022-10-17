import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    String? id,
    DateTime? createDate,
    DateTime? lastActivityDate,
    @Default(<String, dynamic>{}) Map<String, dynamic>? solvedQuizzes,
  }) = _UserModel;
  UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
