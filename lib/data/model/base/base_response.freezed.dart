// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseList<T> _$BaseResponseListFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BaseResponseList<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseResponseList<T> {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  T? get results => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseList to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListCopyWith<T, BaseResponseList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListCopyWith<T, $Res> {
  factory $BaseResponseListCopyWith(
          BaseResponseList<T> value, $Res Function(BaseResponseList<T>) then) =
      _$BaseResponseListCopyWithImpl<T, $Res, BaseResponseList<T>>;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'total_results') int? totalResults,
      @JsonKey(name: 'total_pages') int? totalPages,
      T? results});
}

/// @nodoc
class _$BaseResponseListCopyWithImpl<T, $Res, $Val extends BaseResponseList<T>>
    implements $BaseResponseListCopyWith<T, $Res> {
  _$BaseResponseListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? totalResults = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseListImplCopyWith<T, $Res>
    implements $BaseResponseListCopyWith<T, $Res> {
  factory _$$BaseResponseListImplCopyWith(_$BaseResponseListImpl<T> value,
          $Res Function(_$BaseResponseListImpl<T>) then) =
      __$$BaseResponseListImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'total_results') int? totalResults,
      @JsonKey(name: 'total_pages') int? totalPages,
      T? results});
}

/// @nodoc
class __$$BaseResponseListImplCopyWithImpl<T, $Res>
    extends _$BaseResponseListCopyWithImpl<T, $Res, _$BaseResponseListImpl<T>>
    implements _$$BaseResponseListImplCopyWith<T, $Res> {
  __$$BaseResponseListImplCopyWithImpl(_$BaseResponseListImpl<T> _value,
      $Res Function(_$BaseResponseListImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? totalResults = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_$BaseResponseListImpl<T>(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BaseResponseListImpl<T> implements _BaseResponseList<T> {
  const _$BaseResponseListImpl(
      {this.page,
      @JsonKey(name: 'total_results') this.totalResults,
      @JsonKey(name: 'total_pages') this.totalPages,
      this.results});

  factory _$BaseResponseListImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BaseResponseListImplFromJson(json, fromJsonT);

  @override
  final int? page;
  @override
  @JsonKey(name: 'total_results')
  final int? totalResults;
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  final T? results;

  @override
  String toString() {
    return 'BaseResponseList<$T>(page: $page, totalResults: $totalResults, totalPages: $totalPages, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListImpl<T> &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, totalResults, totalPages,
      const DeepCollectionEquality().hash(results));

  /// Create a copy of BaseResponseList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListImplCopyWith<T, _$BaseResponseListImpl<T>> get copyWith =>
      __$$BaseResponseListImplCopyWithImpl<T, _$BaseResponseListImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseResponseListImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseResponseList<T> implements BaseResponseList<T> {
  const factory _BaseResponseList(
      {final int? page,
      @JsonKey(name: 'total_results') final int? totalResults,
      @JsonKey(name: 'total_pages') final int? totalPages,
      final T? results}) = _$BaseResponseListImpl<T>;

  factory _BaseResponseList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BaseResponseListImpl<T>.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  T? get results;

  /// Create a copy of BaseResponseList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListImplCopyWith<T, _$BaseResponseListImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
