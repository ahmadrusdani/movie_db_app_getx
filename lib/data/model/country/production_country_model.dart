import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'production_country_model.freezed.dart';
part 'production_country_model.g.dart';

@freezed
@HiveType(typeId: 4)
class ProductionCountryModel with _$ProductionCountryModel {
  const factory ProductionCountryModel({
    @HiveField(0) @JsonKey(name: 'iso_3166_1') required String iso31661,
    @HiveField(1) required String name,
  }) = _ProductionCountryModel;

  factory ProductionCountryModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountryModelFromJson(json);
}