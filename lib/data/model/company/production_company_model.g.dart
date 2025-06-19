// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_company_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductionCompanyModelAdapter
    extends TypeAdapter<ProductionCompanyModel> {
  @override
  final int typeId = 3;

  @override
  ProductionCompanyModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductionCompanyModel(
      id: fields[0] as int,
      logoPath: fields[1] as String?,
      name: fields[2] as String,
      originCountry: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductionCompanyModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.logoPath)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.originCountry);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCompanyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductionCompanyModelImpl _$$ProductionCompanyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductionCompanyModelImpl(
      id: (json['id'] as num).toInt(),
      logoPath: json['logo_path'] as String?,
      name: json['name'] as String,
      originCountry: json['origin_country'] as String,
    );

Map<String, dynamic> _$$ProductionCompanyModelImplToJson(
        _$ProductionCompanyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'origin_country': instance.originCountry,
    };
