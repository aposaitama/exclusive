// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouriteBlocState {
  LoadingWishlistStatus get loadingWishlistStatus =>
      throw _privateConstructorUsedError;
  List<ProductLightModel> get productsList =>
      throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of FavouriteBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavouriteBlocStateCopyWith<FavouriteBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteBlocStateCopyWith<$Res> {
  factory $FavouriteBlocStateCopyWith(
          FavouriteBlocState value, $Res Function(FavouriteBlocState) then) =
      _$FavouriteBlocStateCopyWithImpl<$Res, FavouriteBlocState>;
  @useResult
  $Res call(
      {LoadingWishlistStatus loadingWishlistStatus,
      List<ProductLightModel> productsList,
      String errorMessage});
}

/// @nodoc
class _$FavouriteBlocStateCopyWithImpl<$Res, $Val extends FavouriteBlocState>
    implements $FavouriteBlocStateCopyWith<$Res> {
  _$FavouriteBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavouriteBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingWishlistStatus = null,
    Object? productsList = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      loadingWishlistStatus: null == loadingWishlistStatus
          ? _value.loadingWishlistStatus
          : loadingWishlistStatus // ignore: cast_nullable_to_non_nullable
              as LoadingWishlistStatus,
      productsList: null == productsList
          ? _value.productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductLightModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouriteBlocStateImplCopyWith<$Res>
    implements $FavouriteBlocStateCopyWith<$Res> {
  factory _$$FavouriteBlocStateImplCopyWith(_$FavouriteBlocStateImpl value,
          $Res Function(_$FavouriteBlocStateImpl) then) =
      __$$FavouriteBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingWishlistStatus loadingWishlistStatus,
      List<ProductLightModel> productsList,
      String errorMessage});
}

/// @nodoc
class __$$FavouriteBlocStateImplCopyWithImpl<$Res>
    extends _$FavouriteBlocStateCopyWithImpl<$Res, _$FavouriteBlocStateImpl>
    implements _$$FavouriteBlocStateImplCopyWith<$Res> {
  __$$FavouriteBlocStateImplCopyWithImpl(_$FavouriteBlocStateImpl _value,
      $Res Function(_$FavouriteBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavouriteBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingWishlistStatus = null,
    Object? productsList = null,
    Object? errorMessage = null,
  }) {
    return _then(_$FavouriteBlocStateImpl(
      loadingWishlistStatus: null == loadingWishlistStatus
          ? _value.loadingWishlistStatus
          : loadingWishlistStatus // ignore: cast_nullable_to_non_nullable
              as LoadingWishlistStatus,
      productsList: null == productsList
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductLightModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavouriteBlocStateImpl implements _FavouriteBlocState {
  const _$FavouriteBlocStateImpl(
      {this.loadingWishlistStatus = LoadingWishlistStatus.initial,
      final List<ProductLightModel> productsList = const [],
      this.errorMessage = ''})
      : _productsList = productsList;

  @override
  @JsonKey()
  final LoadingWishlistStatus loadingWishlistStatus;
  final List<ProductLightModel> _productsList;
  @override
  @JsonKey()
  List<ProductLightModel> get productsList {
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsList);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'FavouriteBlocState(loadingWishlistStatus: $loadingWishlistStatus, productsList: $productsList, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteBlocStateImpl &&
            (identical(other.loadingWishlistStatus, loadingWishlistStatus) ||
                other.loadingWishlistStatus == loadingWishlistStatus) &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingWishlistStatus,
      const DeepCollectionEquality().hash(_productsList), errorMessage);

  /// Create a copy of FavouriteBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteBlocStateImplCopyWith<_$FavouriteBlocStateImpl> get copyWith =>
      __$$FavouriteBlocStateImplCopyWithImpl<_$FavouriteBlocStateImpl>(
          this, _$identity);
}

abstract class _FavouriteBlocState implements FavouriteBlocState {
  const factory _FavouriteBlocState(
      {final LoadingWishlistStatus loadingWishlistStatus,
      final List<ProductLightModel> productsList,
      final String errorMessage}) = _$FavouriteBlocStateImpl;

  @override
  LoadingWishlistStatus get loadingWishlistStatus;
  @override
  List<ProductLightModel> get productsList;
  @override
  String get errorMessage;

  /// Create a copy of FavouriteBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavouriteBlocStateImplCopyWith<_$FavouriteBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
