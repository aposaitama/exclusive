// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advert_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdvertCardModel _$AdvertCardModelFromJson(Map<String, dynamic> json) {
  return _AdvertCardModel.fromJson(json);
}

/// @nodoc
mixin _$AdvertCardModel {
  int get id => throw _privateConstructorUsedError;
  String get productID => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String get advertCardTitle => throw _privateConstructorUsedError;
  String get advertCardCategoryName => throw _privateConstructorUsedError;
  ImageModel get advertCardImage => throw _privateConstructorUsedError;

  /// Serializes this AdvertCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdvertCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvertCardModelCopyWith<AdvertCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertCardModelCopyWith<$Res> {
  factory $AdvertCardModelCopyWith(
          AdvertCardModel value, $Res Function(AdvertCardModel) then) =
      _$AdvertCardModelCopyWithImpl<$Res, AdvertCardModel>;
  @useResult
  $Res call(
      {int id,
      String productID,
      DateTime? endDate,
      String advertCardTitle,
      String advertCardCategoryName,
      ImageModel advertCardImage});

  $ImageModelCopyWith<$Res> get advertCardImage;
}

/// @nodoc
class _$AdvertCardModelCopyWithImpl<$Res, $Val extends AdvertCardModel>
    implements $AdvertCardModelCopyWith<$Res> {
  _$AdvertCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvertCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productID = null,
    Object? endDate = freezed,
    Object? advertCardTitle = null,
    Object? advertCardCategoryName = null,
    Object? advertCardImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productID: null == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      advertCardTitle: null == advertCardTitle
          ? _value.advertCardTitle
          : advertCardTitle // ignore: cast_nullable_to_non_nullable
              as String,
      advertCardCategoryName: null == advertCardCategoryName
          ? _value.advertCardCategoryName
          : advertCardCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      advertCardImage: null == advertCardImage
          ? _value.advertCardImage
          : advertCardImage // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ) as $Val);
  }

  /// Create a copy of AdvertCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res> get advertCardImage {
    return $ImageModelCopyWith<$Res>(_value.advertCardImage, (value) {
      return _then(_value.copyWith(advertCardImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdvertCardModelImplCopyWith<$Res>
    implements $AdvertCardModelCopyWith<$Res> {
  factory _$$AdvertCardModelImplCopyWith(_$AdvertCardModelImpl value,
          $Res Function(_$AdvertCardModelImpl) then) =
      __$$AdvertCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String productID,
      DateTime? endDate,
      String advertCardTitle,
      String advertCardCategoryName,
      ImageModel advertCardImage});

  @override
  $ImageModelCopyWith<$Res> get advertCardImage;
}

/// @nodoc
class __$$AdvertCardModelImplCopyWithImpl<$Res>
    extends _$AdvertCardModelCopyWithImpl<$Res, _$AdvertCardModelImpl>
    implements _$$AdvertCardModelImplCopyWith<$Res> {
  __$$AdvertCardModelImplCopyWithImpl(
      _$AdvertCardModelImpl _value, $Res Function(_$AdvertCardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productID = null,
    Object? endDate = freezed,
    Object? advertCardTitle = null,
    Object? advertCardCategoryName = null,
    Object? advertCardImage = null,
  }) {
    return _then(_$AdvertCardModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productID: null == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      advertCardTitle: null == advertCardTitle
          ? _value.advertCardTitle
          : advertCardTitle // ignore: cast_nullable_to_non_nullable
              as String,
      advertCardCategoryName: null == advertCardCategoryName
          ? _value.advertCardCategoryName
          : advertCardCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      advertCardImage: null == advertCardImage
          ? _value.advertCardImage
          : advertCardImage // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertCardModelImpl implements _AdvertCardModel {
  const _$AdvertCardModelImpl(
      {required this.id,
      required this.productID,
      this.endDate,
      required this.advertCardTitle,
      required this.advertCardCategoryName,
      required this.advertCardImage});

  factory _$AdvertCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertCardModelImplFromJson(json);

  @override
  final int id;
  @override
  final String productID;
  @override
  final DateTime? endDate;
  @override
  final String advertCardTitle;
  @override
  final String advertCardCategoryName;
  @override
  final ImageModel advertCardImage;

  @override
  String toString() {
    return 'AdvertCardModel(id: $id, productID: $productID, endDate: $endDate, advertCardTitle: $advertCardTitle, advertCardCategoryName: $advertCardCategoryName, advertCardImage: $advertCardImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertCardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productID, productID) ||
                other.productID == productID) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.advertCardTitle, advertCardTitle) ||
                other.advertCardTitle == advertCardTitle) &&
            (identical(other.advertCardCategoryName, advertCardCategoryName) ||
                other.advertCardCategoryName == advertCardCategoryName) &&
            (identical(other.advertCardImage, advertCardImage) ||
                other.advertCardImage == advertCardImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, productID, endDate,
      advertCardTitle, advertCardCategoryName, advertCardImage);

  /// Create a copy of AdvertCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertCardModelImplCopyWith<_$AdvertCardModelImpl> get copyWith =>
      __$$AdvertCardModelImplCopyWithImpl<_$AdvertCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertCardModelImplToJson(
      this,
    );
  }
}

abstract class _AdvertCardModel implements AdvertCardModel {
  const factory _AdvertCardModel(
      {required final int id,
      required final String productID,
      final DateTime? endDate,
      required final String advertCardTitle,
      required final String advertCardCategoryName,
      required final ImageModel advertCardImage}) = _$AdvertCardModelImpl;

  factory _AdvertCardModel.fromJson(Map<String, dynamic> json) =
      _$AdvertCardModelImpl.fromJson;

  @override
  int get id;
  @override
  String get productID;
  @override
  DateTime? get endDate;
  @override
  String get advertCardTitle;
  @override
  String get advertCardCategoryName;
  @override
  ImageModel get advertCardImage;

  /// Create a copy of AdvertCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvertCardModelImplCopyWith<_$AdvertCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
