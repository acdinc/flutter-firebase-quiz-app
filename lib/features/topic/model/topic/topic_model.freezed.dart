// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'topic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopicModel _$TopicModelFromJson(Map<String, dynamic> json) {
  return _TopicModel.fromJson(json);
}

/// @nodoc
mixin _$TopicModel {
  String? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  int? get percent => throw _privateConstructorUsedError;
  List<QuizModel>? get quizzes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicModelCopyWith<TopicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicModelCopyWith<$Res> {
  factory $TopicModelCopyWith(
          TopicModel value, $Res Function(TopicModel) then) =
      _$TopicModelCopyWithImpl<$Res, TopicModel>;
  @useResult
  $Res call(
      {String? id,
      String? text,
      String? desc,
      int? percent,
      List<QuizModel>? quizzes});
}

/// @nodoc
class _$TopicModelCopyWithImpl<$Res, $Val extends TopicModel>
    implements $TopicModelCopyWith<$Res> {
  _$TopicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? desc = freezed,
    Object? percent = freezed,
    Object? quizzes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int?,
      quizzes: freezed == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<QuizModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopicModelCopyWith<$Res>
    implements $TopicModelCopyWith<$Res> {
  factory _$$_TopicModelCopyWith(
          _$_TopicModel value, $Res Function(_$_TopicModel) then) =
      __$$_TopicModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? text,
      String? desc,
      int? percent,
      List<QuizModel>? quizzes});
}

/// @nodoc
class __$$_TopicModelCopyWithImpl<$Res>
    extends _$TopicModelCopyWithImpl<$Res, _$_TopicModel>
    implements _$$_TopicModelCopyWith<$Res> {
  __$$_TopicModelCopyWithImpl(
      _$_TopicModel _value, $Res Function(_$_TopicModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? desc = freezed,
    Object? percent = freezed,
    Object? quizzes = freezed,
  }) {
    return _then(_$_TopicModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int?,
      quizzes: freezed == quizzes
          ? _value._quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<QuizModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopicModel extends _TopicModel {
  _$_TopicModel(
      {this.id,
      this.text,
      this.desc,
      this.percent,
      final List<QuizModel>? quizzes})
      : _quizzes = quizzes,
        super._();

  factory _$_TopicModel.fromJson(Map<String, dynamic> json) =>
      _$$_TopicModelFromJson(json);

  @override
  final String? id;
  @override
  final String? text;
  @override
  final String? desc;
  @override
  final int? percent;
  final List<QuizModel>? _quizzes;
  @override
  List<QuizModel>? get quizzes {
    final value = _quizzes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TopicModel(id: $id, text: $text, desc: $desc, percent: $percent, quizzes: $quizzes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopicModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.percent, percent) || other.percent == percent) &&
            const DeepCollectionEquality().equals(other._quizzes, _quizzes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, desc, percent,
      const DeepCollectionEquality().hash(_quizzes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicModelCopyWith<_$_TopicModel> get copyWith =>
      __$$_TopicModelCopyWithImpl<_$_TopicModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicModelToJson(
      this,
    );
  }
}

abstract class _TopicModel extends TopicModel {
  factory _TopicModel(
      {final String? id,
      final String? text,
      final String? desc,
      final int? percent,
      final List<QuizModel>? quizzes}) = _$_TopicModel;
  _TopicModel._() : super._();

  factory _TopicModel.fromJson(Map<String, dynamic> json) =
      _$_TopicModel.fromJson;

  @override
  String? get id;
  @override
  String? get text;
  @override
  String? get desc;
  @override
  int? get percent;
  @override
  List<QuizModel>? get quizzes;
  @override
  @JsonKey(ignore: true)
  _$$_TopicModelCopyWith<_$_TopicModel> get copyWith =>
      throw _privateConstructorUsedError;
}
