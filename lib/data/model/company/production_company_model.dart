import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'production_company_model.freezed.dart';
part 'production_company_model.g.dart';

@freezed
@HiveType(typeId: 3)
class ProductionCompanyModel with _$ProductionCompanyModel {
  const factory ProductionCompanyModel({
    @HiveField(0) required int id,
    @HiveField(1) @JsonKey(name: 'logo_path') String? logoPath,
    @HiveField(2) required String name,
    @HiveField(3) @JsonKey(name: 'origin_country') required String originCountry,
  }) = _ProductionCompanyModel;

  factory ProductionCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompanyModelFromJson(json);
}