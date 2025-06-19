// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListImpl<T> _$$BaseResponseListImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BaseResponseListImpl<T>(
      page: (json['page'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      results: _$nullableGenericFromJson(json['results'], fromJsonT),
    );

Map<String, dynamic> _$$BaseResponseListImplToJson<T>(
  _$BaseResponseListImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
      'results': _$nullableGenericToJson(instance.results, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
