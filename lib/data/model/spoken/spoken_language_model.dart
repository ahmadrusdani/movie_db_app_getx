import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'spoken_language_model.freezed.dart';
part 'spoken_language_model.g.dart';

@freezed
@HiveType(typeId: 5)
class SpokenLanguageModel with _$SpokenLanguageModel {
  const factory SpokenLanguageModel({
    @HiveField(0) @JsonKey(name: 'english_name') required String englishName,
    @HiveField(1) @JsonKey(name: 'iso_639_1') required String iso6391,
    @HiveField(2) required String name,
  }) = _SpokenLanguageModel;

  factory SpokenLanguageModel.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageModelFromJson(json);
}