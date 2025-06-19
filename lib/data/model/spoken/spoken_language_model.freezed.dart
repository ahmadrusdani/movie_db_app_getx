// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spoken_language_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpokenLanguageModel _$SpokenLanguageModelFromJson(Map<String, dynamic> json) {
  return _SpokenLanguageModel.fromJson(json);
}

/// @nodoc
mixin _$SpokenLanguageModel {
  @HiveField(0)
  @JsonKey(name: 'english_name')
  String get englishName => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'iso_639_1')
  String get iso6391 => throw _privateConstructorUsedError;
  @HiveField(2)
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SpokenLanguageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpokenLanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpokenLanguageModelCopyWith<SpokenLanguageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpokenLanguageModelCopyWith<$Res> {
  factory $SpokenLanguageModelCopyWith(
          SpokenLanguageModel value, $Res Function(SpokenLanguageModel) then) =
      _$SpokenLanguageModelCopyWithImpl<$Res, SpokenLanguageModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'english_name') String englishName,
      @HiveField(1) @JsonKey(name: 'iso_639_1') String iso6391,
      @HiveField(2) String name});
}

/// @nodoc
class _$SpokenLanguageModelCopyWithImpl<$Res, $Val extends SpokenLanguageModel>
    implements $SpokenLanguageModelCopyWith<$Res> {
  _$SpokenLanguageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpokenLanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = null,
    Object? iso6391 = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      iso6391: null == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpokenLanguageModelImplCopyWith<$Res>
    implements $SpokenLanguageModelCopyWith<$Res> {
  factory _$$SpokenLanguageModelImplCopyWith(_$SpokenLanguageModelImpl value,
          $Res Function(_$SpokenLanguageModelImpl) then) =
      __$$SpokenLanguageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'english_name') String englishName,
      @HiveField(1) @JsonKey(name: 'iso_639_1') String iso6391,
      @HiveField(2) String name});
}

/// @nodoc
class __$$SpokenLanguageModelImplCopyWithImpl<$Res>
    extends _$SpokenLanguageModelCopyWithImpl<$Res, _$SpokenLanguageModelImpl>
    implements _$$SpokenLanguageModelImplCopyWith<$Res> {
  __$$SpokenLanguageModelImplCopyWithImpl(_$SpokenLanguageModelImpl _value,
      $Res Function(_$SpokenLanguageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpokenLanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = null,
    Object? iso6391 = null,
    Object? name = null,
  }) {
    return _then(_$SpokenLanguageModelImpl(
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      iso6391: null == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpokenLanguageModelImpl implements _SpokenLanguageModel {
  const _$SpokenLanguageModelImpl(
      {@HiveField(0) @JsonKey(name: 'english_name') required this.englishName,
      @HiveField(1) @JsonKey(name: 'iso_639_1') required this.iso6391,
      @HiveField(2) required this.name});

  factory _$SpokenLanguageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpokenLanguageModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'english_name')
  final String englishName;
  @override
  @HiveField(1)
  @JsonKey(name: 'iso_639_1')
  final String iso6391;
  @override
  @HiveField(2)
  final String name;

  @override
  String toString() {
    return 'SpokenLanguageModel(englishName: $englishName, iso6391: $iso6391, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpokenLanguageModelImpl &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, englishName, iso6391, name);

  /// Create a copy of SpokenLanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpokenLanguageModelImplCopyWith<_$SpokenLanguageModelImpl> get copyWith =>
      __$$SpokenLanguageModelImplCopyWithImpl<_$SpokenLanguageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpokenLanguageModelImplToJson(
      this,
    );
  }
}

abstract class _SpokenLanguageModel implements SpokenLanguageModel {
  const factory _SpokenLanguageModel(
      {@HiveField(0)
      @JsonKey(name: 'english_name')
      required final String englishName,
      @HiveField(1) @JsonKey(name: 'iso_639_1') required final String iso6391,
      @HiveField(2) required final String name}) = _$SpokenLanguageModelImpl;

  factory _SpokenLanguageModel.fromJson(Map<String, dynamic> json) =
      _$SpokenLanguageModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'english_name')
  String get englishName;
  @override
  @HiveField(1)
  @JsonKey(name: 'iso_639_1')
  String get iso6391;
  @override
  @HiveField(2)
  String get name;

  /// Create a copy of SpokenLanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpokenLanguageModelImplCopyWith<_$SpokenLanguageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
