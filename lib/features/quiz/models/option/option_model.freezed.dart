// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OptionModel _$OptionModelFromJson(Map<String, dynamic> json) {
  return _OptionModel.fromJson(json);
}

/// @nodoc
mixin _$OptionModel {
  String? get text => throw _privateConstructorUsedError;
  bool? get isCorrect => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionModelCopyWith<OptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionModelCopyWith<$Res> {
  factory $OptionModelCopyWith(
          OptionModel value, $Res Function(OptionModel) then) =
      _$OptionModelCopyWithImpl<$Res, OptionModel>;
  @useResult
  $Res call({String? text, bool? isCorrect, String? image, String? detail});
}

/// @nodoc
class _$OptionModelCopyWithImpl<$Res, $Val extends OptionModel>
    implements $OptionModelCopyWith<$Res> {
  _$OptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? isCorrect = freezed,
    Object? image = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OptionModelCopyWith<$Res>
    implements $OptionModelCopyWith<$Res> {
  factory _$$_OptionModelCopyWith(
          _$_OptionModel value, $Res Function(_$_OptionModel) then) =
      __$$_OptionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, bool? isCorrect, String? image, String? detail});
}

/// @nodoc
class __$$_OptionModelCopyWithImpl<$Res>
    extends _$OptionModelCopyWithImpl<$Res, _$_OptionModel>
    implements _$$_OptionModelCopyWith<$Res> {
  __$$_OptionModelCopyWithImpl(
      _$_OptionModel _value, $Res Function(_$_OptionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? isCorrect = freezed,
    Object? image = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$_OptionModel(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OptionModel extends _OptionModel {
  _$_OptionModel({this.text, this.isCorrect, this.image, this.detail})
      : super._();

  factory _$_OptionModel.fromJson(Map<String, dynamic> json) =>
      _$$_OptionModelFromJson(json);

  @override
  final String? text;
  @override
  final bool? isCorrect;
  @override
  final String? image;
  @override
  final String? detail;

  @override
  String toString() {
    return 'OptionModel(text: $text, isCorrect: $isCorrect, image: $image, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OptionModel &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, isCorrect, image, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OptionModelCopyWith<_$_OptionModel> get copyWith =>
      __$$_OptionModelCopyWithImpl<_$_OptionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OptionModelToJson(
      this,
    );
  }
}

abstract class _OptionModel extends OptionModel {
  factory _OptionModel(
      {final String? text,
      final bool? isCorrect,
      final String? image,
      final String? detail}) = _$_OptionModel;
  _OptionModel._() : super._();

  factory _OptionModel.fromJson(Map<String, dynamic> json) =
      _$_OptionModel.fromJson;

  @override
  String? get text;
  @override
  bool? get isCorrect;
  @override
  String? get image;
  @override
  String? get detail;
  @override
  @JsonKey(ignore: true)
  _$$_OptionModelCopyWith<_$_OptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
