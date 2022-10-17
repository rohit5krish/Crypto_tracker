// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coins_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoinsModel _$CoinsModelFromJson(Map<String, dynamic> json) {
  return _CoinsModel.fromJson(json);
}

/// @nodoc
mixin _$CoinsModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "symbol")
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "current_price")
  double? get currentPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinsModelCopyWith<CoinsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinsModelCopyWith<$Res> {
  factory $CoinsModelCopyWith(
          CoinsModel value, $Res Function(CoinsModel) then) =
      _$CoinsModelCopyWithImpl<$Res, CoinsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "symbol") String? symbol,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "current_price") double? currentPrice});
}

/// @nodoc
class _$CoinsModelCopyWithImpl<$Res, $Val extends CoinsModel>
    implements $CoinsModelCopyWith<$Res> {
  _$CoinsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? currentPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinsModelCopyWith<$Res>
    implements $CoinsModelCopyWith<$Res> {
  factory _$$_CoinsModelCopyWith(
          _$_CoinsModel value, $Res Function(_$_CoinsModel) then) =
      __$$_CoinsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "symbol") String? symbol,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "current_price") double? currentPrice});
}

/// @nodoc
class __$$_CoinsModelCopyWithImpl<$Res>
    extends _$CoinsModelCopyWithImpl<$Res, _$_CoinsModel>
    implements _$$_CoinsModelCopyWith<$Res> {
  __$$_CoinsModelCopyWithImpl(
      _$_CoinsModel _value, $Res Function(_$_CoinsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? currentPrice = freezed,
  }) {
    return _then(_$_CoinsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinsModel implements _CoinsModel {
  const _$_CoinsModel(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "symbol") required this.symbol,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "current_price") required this.currentPrice});

  factory _$_CoinsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CoinsModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "symbol")
  final String? symbol;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "current_price")
  final double? currentPrice;

  @override
  String toString() {
    return 'CoinsModel(id: $id, symbol: $symbol, name: $name, image: $image, currentPrice: $currentPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, symbol, name, image, currentPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinsModelCopyWith<_$_CoinsModel> get copyWith =>
      __$$_CoinsModelCopyWithImpl<_$_CoinsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinsModelToJson(
      this,
    );
  }
}

abstract class _CoinsModel implements CoinsModel {
  const factory _CoinsModel(
      {@JsonKey(name: "id")
          required final String? id,
      @JsonKey(name: "symbol")
          required final String? symbol,
      @JsonKey(name: "name")
          required final String? name,
      @JsonKey(name: "image")
          required final String? image,
      @JsonKey(name: "current_price")
          required final double? currentPrice}) = _$_CoinsModel;

  factory _CoinsModel.fromJson(Map<String, dynamic> json) =
      _$_CoinsModel.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "symbol")
  String? get symbol;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "current_price")
  double? get currentPrice;
  @override
  @JsonKey(ignore: true)
  _$$_CoinsModelCopyWith<_$_CoinsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
