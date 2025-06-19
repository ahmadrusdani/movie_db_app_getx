// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductionCompanyModel _$ProductionCompanyModelFromJson(
    Map<String, dynamic> json) {
  return _ProductionCompanyModel.fromJson(json);
}

/// @nodoc
mixin _$ProductionCompanyModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'logo_path')
  String? get logoPath => throw _privateConstructorUsedError;
  @HiveField(2)
  String get name => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'origin_country')
  String get originCountry => throw _privateConstructorUsedError;

  /// Serializes this ProductionCompanyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductionCompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductionCompanyModelCopyWith<ProductionCompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompanyModelCopyWith<$Res> {
  factory $ProductionCompanyModelCopyWith(ProductionCompanyModel value,
          $Res Function(ProductionCompanyModel) then) =
      _$ProductionCompanyModelCopyWithImpl<$Res, ProductionCompanyModel>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) @JsonKey(name: 'logo_path') String? logoPath,
      @HiveField(2) String name,
      @HiveField(3) @JsonKey(name: 'origin_country') String originCountry});
}

/// @nodoc
class _$ProductionCompanyModelCopyWithImpl<$Res,
        $Val extends ProductionCompanyModel>
    implements $ProductionCompanyModelCopyWith<$Res> {
  _$ProductionCompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductionCompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logoPath = freezed,
    Object? name = null,
    Object? originCountry = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originCountry: null == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCompanyModelImplCopyWith<$Res>
    implements $ProductionCompanyModelCopyWith<$Res> {
  factory _$$ProductionCompanyModelImplCopyWith(
          _$ProductionCompanyModelImpl value,
          $Res Function(_$ProductionCompanyModelImpl) then) =
      __$$ProductionCompanyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) @JsonKey(name: 'logo_path') String? logoPath,
      @HiveField(2) String name,
      @HiveField(3) @JsonKey(name: 'origin_country') String originCountry});
}

/// @nodoc
class __$$ProductionCompanyModelImplCopyWithImpl<$Res>
    extends _$ProductionCompanyModelCopyWithImpl<$Res,
        _$ProductionCompanyModelImpl>
    implements _$$ProductionCompanyModelImplCopyWith<$Res> {
  __$$ProductionCompanyModelImplCopyWithImpl(
      _$ProductionCompanyModelImpl _value,
      $Res Function(_$ProductionCompanyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductionCompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logoPath = freezed,
    Object? name = null,
    Object? originCountry = null,
  }) {
    return _then(_$ProductionCompanyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originCountry: null == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionCompanyModelImpl implements _ProductionCompanyModel {
  const _$ProductionCompanyModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @JsonKey(name: 'logo_path') this.logoPath,
      @HiveField(2) required this.name,
      @HiveField(3)
      @JsonKey(name: 'origin_country')
      required this.originCountry});

  factory _$ProductionCompanyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCompanyModelImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @override
  @HiveField(2)
  final String name;
  @override
  @HiveField(3)
  @JsonKey(name: 'origin_country')
  final String originCountry;

  @override
  String toString() {
    return 'ProductionCompanyModel(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCompanyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originCountry, originCountry) ||
                other.originCountry == originCountry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, logoPath, name, originCountry);

  /// Create a copy of ProductionCompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCompanyModelImplCopyWith<_$ProductionCompanyModelImpl>
      get copyWith => __$$ProductionCompanyModelImplCopyWithImpl<
          _$ProductionCompanyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCompanyModelImplToJson(
      this,
    );
  }
}

abstract class _ProductionCompanyModel implements ProductionCompanyModel {
  const factory _ProductionCompanyModel(
      {@HiveField(0) required final int id,
      @HiveField(1) @JsonKey(name: 'logo_path') final String? logoPath,
      @HiveField(2) required final String name,
      @HiveField(3)
      @JsonKey(name: 'origin_country')
      required final String originCountry}) = _$ProductionCompanyModelImpl;

  factory _ProductionCompanyModel.fromJson(Map<String, dynamic> json) =
      _$ProductionCompanyModelImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'logo_path')
  String? get logoPath;
  @override
  @HiveField(2)
  String get name;
  @override
  @HiveField(3)
  @JsonKey(name: 'origin_country')
  String get originCountry;

  /// Create a copy of ProductionCompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductionCompanyModelImplCopyWith<_$ProductionCompanyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
