// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_cart_product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveCartProductModelAdapter extends TypeAdapter<HiveCartProductModel> {
  @override
  final int typeId = 2;

  @override
  HiveCartProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveCartProductModel(
      id: fields[0] as String,
      colorId: fields[1] as String,
      count: fields[2] as int,
      size: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveCartProductModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.colorId)
      ..writeByte(2)
      ..write(obj.count)
      ..writeByte(3)
      ..write(obj.size);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveCartProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
