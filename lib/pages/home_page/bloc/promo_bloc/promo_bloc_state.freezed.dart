// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PromoBlocState {
  List<PromoSliderModel> get promoSliderItems =>
      throw _privateConstructorUsedError;
  List<NewArivalModel> get newArivalItems => throw _privateConstructorUsedError;
  AdvertCardModel get advertCardItem => throw _privateConstructorUsedError;

  /// Create a copy of PromoBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromoBlocStateCopyWith<PromoBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoBlocStateCopyWith<$Res> {
  factory $PromoBlocStateCopyWith(
          PromoBlocState value, $Res Function(PromoBlocState) then) =
      _$PromoBlocStateCopyWithImpl<$Res, PromoBlocState>;
  @useResult
  $Res call(
      {List<PromoSliderModel> promoSliderItems,
      List<NewArivalModel> newArivalItems,
      AdvertCardModel advertCardItem});

  $AdvertCardModelCopyWith<$Res> get advertCardItem;
}

/// @nodoc
class _$PromoBlocStateCopyWithImpl<$Res, $Val extends PromoBlocState>
    implements $PromoBlocStateCopyWith<$Res> {
  _$PromoBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromoBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promoSliderItems = null,
    Object? newArivalItems = null,
    Object? advertCardItem = null,
  }) {
    return _then(_value.copyWith(
      promoSliderItems: null == promoSliderItems
          ? _value.promoSliderItems
          : promoSliderItems // ignore: cast_nullable_to_non_nullable
              as List<PromoSliderModel>,
      newArivalItems: null == newArivalItems
          ? _value.newArivalItems
          : newArivalItems // ignore: cast_nullable_to_non_nullable
              as List<NewArivalModel>,
      advertCardItem: null == advertCardItem
          ? _value.advertCardItem
          : advertCardItem // ignore: cast_nullable_to_non_nullable
              as AdvertCardModel,
    ) as $Val);
  }

  /// Create a copy of PromoBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdvertCardModelCopyWith<$Res> get advertCardItem {
    return $AdvertCardModelCopyWith<$Res>(_value.advertCardItem, (value) {
      return _then(_value.copyWith(advertCardItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PromoBlocStateImplCopyWith<$Res>
    implements $PromoBlocStateCopyWith<$Res> {
  factory _$$PromoBlocStateImplCopyWith(_$PromoBlocStateImpl value,
          $Res Function(_$PromoBlocStateImpl) then) =
      __$$PromoBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PromoSliderModel> promoSliderItems,
      List<NewArivalModel> newArivalItems,
      AdvertCardModel advertCardItem});

  @override
  $AdvertCardModelCopyWith<$Res> get advertCardItem;
}

/// @nodoc
class __$$PromoBlocStateImplCopyWithImpl<$Res>
    extends _$PromoBlocStateCopyWithImpl<$Res, _$PromoBlocStateImpl>
    implements _$$PromoBlocStateImplCopyWith<$Res> {
  __$$PromoBlocStateImplCopyWithImpl(
      _$PromoBlocStateImpl _value, $Res Function(_$PromoBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromoBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promoSliderItems = null,
    Object? newArivalItems = null,
    Object? advertCardItem = null,
  }) {
    return _then(_$PromoBlocStateImpl(
      promoSliderItems: null == promoSliderItems
          ? _value._promoSliderItems
          : promoSliderItems // ignore: cast_nullable_to_non_nullable
              as List<PromoSliderModel>,
      newArivalItems: null == newArivalItems
          ? _value._newArivalItems
          : newArivalItems // ignore: cast_nullable_to_non_nullable
              as List<NewArivalModel>,
      advertCardItem: null == advertCardItem
          ? _value.advertCardItem
          : advertCardItem // ignore: cast_nullable_to_non_nullable
              as AdvertCardModel,
    ));
  }
}

/// @nodoc

class _$PromoBlocStateImpl implements _PromoBlocState {
  const _$PromoBlocStateImpl(
      {final List<PromoSliderModel> promoSliderItems = const [],
      final List<NewArivalModel> newArivalItems = const [],
      this.advertCardItem = const AdvertCardModel(
          id: 0,
          productID: '',
          advertCardTitle: '',
          advertCardCategoryName: '',
          advertCardImage: ImageModel(url: ''))})
      : _promoSliderItems = promoSliderItems,
        _newArivalItems = newArivalItems;

  final List<PromoSliderModel> _promoSliderItems;
  @override
  @JsonKey()
  List<PromoSliderModel> get promoSliderItems {
    if (_promoSliderItems is EqualUnmodifiableListView)
      return _promoSliderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promoSliderItems);
  }

  final List<NewArivalModel> _newArivalItems;
  @override
  @JsonKey()
  List<NewArivalModel> get newArivalItems {
    if (_newArivalItems is EqualUnmodifiableListView) return _newArivalItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newArivalItems);
  }

  @override
  @JsonKey()
  final AdvertCardModel advertCardItem;

  @override
  String toString() {
    return 'PromoBlocState(promoSliderItems: $promoSliderItems, newArivalItems: $newArivalItems, advertCardItem: $advertCardItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromoBlocStateImpl &&
            const DeepCollectionEquality()
                .equals(other._promoSliderItems, _promoSliderItems) &&
            const DeepCollectionEquality()
                .equals(other._newArivalItems, _newArivalItems) &&
            (identical(other.advertCardItem, advertCardItem) ||
                other.advertCardItem == advertCardItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_promoSliderItems),
      const DeepCollectionEquality().hash(_newArivalItems),
      advertCardItem);

  /// Create a copy of PromoBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromoBlocStateImplCopyWith<_$PromoBlocStateImpl> get copyWith =>
      __$$PromoBlocStateImplCopyWithImpl<_$PromoBlocStateImpl>(
          this, _$identity);
}

abstract class _PromoBlocState implements PromoBlocState {
  const factory _PromoBlocState(
      {final List<PromoSliderModel> promoSliderItems,
      final List<NewArivalModel> newArivalItems,
      final AdvertCardModel advertCardItem}) = _$PromoBlocStateImpl;

  @override
  List<PromoSliderModel> get promoSliderItems;
  @override
  List<NewArivalModel> get newArivalItems;
  @override
  AdvertCardModel get advertCardItem;

  /// Create a copy of PromoBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromoBlocStateImplCopyWith<_$PromoBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
