// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductionCountryModel _$ProductionCountryModelFromJson(
    Map<String, dynamic> json) {
  return _ProductionCountryModel.fromJson(json);
}

/// @nodoc
mixin _$ProductionCountryModel {
  @HiveField(0)
  @JsonKey(name: 'iso_3166_1')
  String get iso31661 => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ProductionCountryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductionCountryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductionCountryModelCopyWith<ProductionCountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCountryModelCopyWith<$Res> {
  factory $ProductionCountryModelCopyWith(ProductionCountryModel value,
          $Res Function(ProductionCountryModel) then) =
      _$ProductionCountryModelCopyWithImpl<$Res, ProductionCountryModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'iso_3166_1') String iso31661,
      @HiveField(1) String name});
}

/// @nodoc
class _$ProductionCountryModelCopyWithImpl<$Res,
        $Val extends ProductionCountryModel>
    implements $ProductionCountryModelCopyWith<$Res> {
  _$ProductionCountryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductionCountryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      iso31661: null == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCountryModelImplCopyWith<$Res>
    implements $ProductionCountryModelCopyWith<$Res> {
  factory _$$ProductionCountryModelImplCopyWith(
          _$ProductionCountryModelImpl value,
          $Res Function(_$ProductionCountryModelImpl) then) =
      __$$ProductionCountryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'iso_3166_1') String iso31661,
      @HiveField(1) String name});
}

/// @nodoc
class __$$ProductionCountryModelImplCopyWithImpl<$Res>
    extends _$ProductionCountryModelCopyWithImpl<$Res,
        _$ProductionCountryModelImpl>
    implements _$$ProductionCountryModelImplCopyWith<$Res> {
  __$$ProductionCountryModelImplCopyWithImpl(
      _$ProductionCountryModelImpl _value,
      $Res Function(_$ProductionCountryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductionCountryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = null,
    Object? name = null,
  }) {
    return _then(_$ProductionCountryModelImpl(
      iso31661: null == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
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
class _$ProductionCountryModelImpl implements _ProductionCountryModel {
  const _$ProductionCountryModelImpl(
      {@HiveField(0) @JsonKey(name: 'iso_3166_1') required this.iso31661,
      @HiveField(1) required this.name});

  factory _$ProductionCountryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCountryModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'iso_3166_1')
  final String iso31661;
  @override
  @HiveField(1)
  final String name;

  @override
  String toString() {
    return 'ProductionCountryModel(iso31661: $iso31661, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCountryModelImpl &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, iso31661, name);

  /// Create a copy of ProductionCountryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCountryModelImplCopyWith<_$ProductionCountryModelImpl>
      get copyWith => __$$ProductionCountryModelImplCopyWithImpl<
          _$ProductionCountryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCountryModelImplToJson(
      this,
    );
  }
}

abstract class _ProductionCountryModel implements ProductionCountryModel {
  const factory _ProductionCountryModel(
      {@HiveField(0)
      @JsonKey(name: 'iso_3166_1')
      required final String iso31661,
      @HiveField(1) required final String name}) = _$ProductionCountryModelImpl;

  factory _ProductionCountryModel.fromJson(Map<String, dynamic> json) =
      _$ProductionCountryModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'iso_3166_1')
  String get iso31661;
  @override
  @HiveField(1)
  String get name;

  /// Create a copy of ProductionCountryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductionCountryModelImplCopyWith<_$ProductionCountryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
