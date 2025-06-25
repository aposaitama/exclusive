// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlashSaleModel _$FlashSaleModelFromJson(Map<String, dynamic> json) {
  return _FlashSaleModel.fromJson(json);
}

/// @nodoc
mixin _$FlashSaleModel {
  int get id => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  DateTime? get flashSaleDate => throw _privateConstructorUsedError;
  List<ProductLightModel> get products => throw _privateConstructorUsedError;

  /// Serializes this FlashSaleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlashSaleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashSaleModelCopyWith<FlashSaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashSaleModelCopyWith<$Res> {
  factory $FlashSaleModelCopyWith(
          FlashSaleModel value, $Res Function(FlashSaleModel) then) =
      _$FlashSaleModelCopyWithImpl<$Res, FlashSaleModel>;
  @useResult
  $Res call(
      {int id,
      String documentId,
      DateTime? flashSaleDate,
      List<ProductLightModel> products});
}

/// @nodoc
class _$FlashSaleModelCopyWithImpl<$Res, $Val extends FlashSaleModel>
    implements $FlashSaleModelCopyWith<$Res> {
  _$FlashSaleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashSaleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? flashSaleDate = freezed,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      flashSaleDate: freezed == flashSaleDate
          ? _value.flashSaleDate
          : flashSaleDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductLightModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashSaleModelImplCopyWith<$Res>
    implements $FlashSaleModelCopyWith<$Res> {
  factory _$$FlashSaleModelImplCopyWith(_$FlashSaleModelImpl value,
          $Res Function(_$FlashSaleModelImpl) then) =
      __$$FlashSaleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String documentId,
      DateTime? flashSaleDate,
      List<ProductLightModel> products});
}

/// @nodoc
class __$$FlashSaleModelImplCopyWithImpl<$Res>
    extends _$FlashSaleModelCopyWithImpl<$Res, _$FlashSaleModelImpl>
    implements _$$FlashSaleModelImplCopyWith<$Res> {
  __$$FlashSaleModelImplCopyWithImpl(
      _$FlashSaleModelImpl _value, $Res Function(_$FlashSaleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashSaleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? flashSaleDate = freezed,
    Object? products = null,
  }) {
    return _then(_$FlashSaleModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      flashSaleDate: freezed == flashSaleDate
          ? _value.flashSaleDate
          : flashSaleDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductLightModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashSaleModelImpl implements _FlashSaleModel {
  const _$FlashSaleModelImpl(
      {required this.id,
      required this.documentId,
      this.flashSaleDate,
      required final List<ProductLightModel> products})
      : _products = products;

  factory _$FlashSaleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashSaleModelImplFromJson(json);

  @override
  final int id;
  @override
  final String documentId;
  @override
  final DateTime? flashSaleDate;
  final List<ProductLightModel> _products;
  @override
  List<ProductLightModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'FlashSaleModel(id: $id, documentId: $documentId, flashSaleDate: $flashSaleDate, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashSaleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.flashSaleDate, flashSaleDate) ||
                other.flashSaleDate == flashSaleDate) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, documentId, flashSaleDate,
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of FlashSaleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashSaleModelImplCopyWith<_$FlashSaleModelImpl> get copyWith =>
      __$$FlashSaleModelImplCopyWithImpl<_$FlashSaleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashSaleModelImplToJson(
      this,
    );
  }
}

abstract class _FlashSaleModel implements FlashSaleModel {
  const factory _FlashSaleModel(
      {required final int id,
      required final String documentId,
      final DateTime? flashSaleDate,
      required final List<ProductLightModel> products}) = _$FlashSaleModelImpl;

  factory _FlashSaleModel.fromJson(Map<String, dynamic> json) =
      _$FlashSaleModelImpl.fromJson;

  @override
  int get id;
  @override
  String get documentId;
  @override
  DateTime? get flashSaleDate;
  @override
  List<ProductLightModel> get products;

  /// Create a copy of FlashSaleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashSaleModelImplCopyWith<_$FlashSaleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
