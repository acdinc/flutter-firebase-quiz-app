// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizModel _$QuizModelFromJson(Map<String, dynamic> json) {
  return _QuizModel.fromJson(json);
}

/// @nodoc
mixin _$QuizModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get topic => throw _privateConstructorUsedError;
  String? get subTitle => throw _privateConstructorUsedError;
  List<QuestionModel>? get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizModelCopyWith<QuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizModelCopyWith<$Res> {
  factory $QuizModelCopyWith(QuizModel value, $Res Function(QuizModel) then) =
      _$QuizModelCopyWithImpl<$Res, QuizModel>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? topic,
      String? subTitle,
      List<QuestionModel>? questions});
}

/// @nodoc
class _$QuizModelCopyWithImpl<$Res, $Val extends QuizModel>
    implements $QuizModelCopyWith<$Res> {
  _$QuizModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? topic = freezed,
    Object? subTitle = freezed,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizModelCopyWith<$Res> implements $QuizModelCopyWith<$Res> {
  factory _$$_QuizModelCopyWith(
          _$_QuizModel value, $Res Function(_$_QuizModel) then) =
      __$$_QuizModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? topic,
      String? subTitle,
      List<QuestionModel>? questions});
}

/// @nodoc
class __$$_QuizModelCopyWithImpl<$Res>
    extends _$QuizModelCopyWithImpl<$Res, _$_QuizModel>
    implements _$$_QuizModelCopyWith<$Res> {
  __$$_QuizModelCopyWithImpl(
      _$_QuizModel _value, $Res Function(_$_QuizModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? topic = freezed,
    Object? subTitle = freezed,
    Object? questions = freezed,
  }) {
    return _then(_$_QuizModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuizModel extends _QuizModel {
  _$_QuizModel(
      {this.id,
      this.title,
      this.topic,
      this.subTitle,
      final List<QuestionModel>? questions})
      : _questions = questions,
        super._();

  factory _$_QuizModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuizModelFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? topic;
  @override
  final String? subTitle;
  final List<QuestionModel>? _questions;
  @override
  List<QuestionModel>? get questions {
    final value = _questions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuizModel(id: $id, title: $title, topic: $topic, subTitle: $subTitle, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, topic, subTitle,
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizModelCopyWith<_$_QuizModel> get copyWith =>
      __$$_QuizModelCopyWithImpl<_$_QuizModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizModelToJson(
      this,
    );
  }
}

abstract class _QuizModel extends QuizModel {
  factory _QuizModel(
      {final String? id,
      final String? title,
      final String? topic,
      final String? subTitle,
      final List<QuestionModel>? questions}) = _$_QuizModel;
  _QuizModel._() : super._();

  factory _QuizModel.fromJson(Map<String, dynamic> json) =
      _$_QuizModel.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get topic;
  @override
  String? get subTitle;
  @override
  List<QuestionModel>? get questions;
  @override
  @JsonKey(ignore: true)
  _$$_QuizModelCopyWith<_$_QuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}
