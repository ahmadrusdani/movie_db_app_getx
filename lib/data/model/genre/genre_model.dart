import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'genre_model.freezed.dart';
part 'genre_model.g.dart';

@freezed
@HiveType(typeId: 1)
class GenreModel with _$GenreModel {
  const factory GenreModel({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) => _$GenreModelFromJson(json);
}
