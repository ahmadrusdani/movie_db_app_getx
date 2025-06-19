// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_country_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductionCountryModelAdapter
    extends TypeAdapter<ProductionCountryModel> {
  @override
  final int typeId = 4;

  @override
  ProductionCountryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductionCountryModel(
      iso31661: fields[0] as String,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductionCountryModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.iso31661)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductionCountryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductionCountryModelImpl _$$ProductionCountryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductionCountryModelImpl(
      iso31661: json['iso_3166_1'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ProductionCountryModelImplToJson(
        _$ProductionCountryModelImpl instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.iso31661,
      'name': instance.name,
    };
