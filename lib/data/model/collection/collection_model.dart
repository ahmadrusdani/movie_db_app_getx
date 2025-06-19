import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'collection_model.freezed.dart';
part 'collection_model.g.dart';

@freezed
@HiveType(typeId: 2)
class CollectionModel with _$CollectionModel {
  const factory CollectionModel({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) @JsonKey(name: 'poster_path') String? posterPath,
    @HiveField(3) @JsonKey(name: 'backdrop_path') String? backdropPath,
  }) = _CollectionModel;

  factory CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelFromJson(json);
}