import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@Freezed(genericArgumentFactories: true)
class BaseResponseList<T> with _$BaseResponseList<T> {
  const factory BaseResponseList({
    int? page,
    @JsonKey(name: 'total_results') int? totalResults,
    @JsonKey(name: 'total_pages') int? totalPages,
    T? results,
  }) = _BaseResponseList;

  factory BaseResponseList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BaseResponseListFromJson(json, fromJsonT);
}
