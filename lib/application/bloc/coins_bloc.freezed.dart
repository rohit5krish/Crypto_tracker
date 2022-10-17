// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coins_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoinsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCrypto,
    required TResult Function() getFavCrypto,
    required TResult Function(CoinsModel cryptoData) updateFav,
    required TResult Function(String query) searchCrypto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCrypto,
    TResult? Function()? getFavCrypto,
    TResult? Function(CoinsModel cryptoData)? updateFav,
    TResult? Function(String query)? searchCrypto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCrypto,
    TResult Function()? getFavCrypto,
    TResult Function(CoinsModel cryptoData)? updateFav,
    TResult Function(String query)? searchCrypto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCrypto value) getCrypto,
    required TResult Function(GetFavCrypto value) getFavCrypto,
    required TResult Function(UpdateFav value) updateFav,
    required TResult Function(SearchCrypto value) searchCrypto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCrypto value)? getCrypto,
    TResult? Function(GetFavCrypto value)? getFavCrypto,
    TResult? Function(UpdateFav value)? updateFav,
    TResult? Function(SearchCrypto value)? searchCrypto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCrypto value)? getCrypto,
    TResult Function(GetFavCrypto value)? getFavCrypto,
    TResult Function(UpdateFav value)? updateFav,
    TResult Function(SearchCrypto value)? searchCrypto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinsEventCopyWith<$Res> {
  factory $CoinsEventCopyWith(
          CoinsEvent value, $Res Function(CoinsEvent) then) =
      _$CoinsEventCopyWithImpl<$Res, CoinsEvent>;
}

/// @nodoc
class _$CoinsEventCopyWithImpl<$Res, $Val extends CoinsEvent>
    implements $CoinsEventCopyWith<$Res> {
  _$CoinsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCryptoCopyWith<$Res> {
  factory _$$GetCryptoCopyWith(
          _$GetCrypto value, $Res Function(_$GetCrypto) then) =
      __$$GetCryptoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCryptoCopyWithImpl<$Res>
    extends _$CoinsEventCopyWithImpl<$Res, _$GetCrypto>
    implements _$$GetCryptoCopyWith<$Res> {
  __$$GetCryptoCopyWithImpl(
      _$GetCrypto _value, $Res Function(_$GetCrypto) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCrypto with DiagnosticableTreeMixin implements GetCrypto {
  const _$GetCrypto();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoinsEvent.getCrypto()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CoinsEvent.getCrypto'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCrypto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCrypto,
    required TResult Function() getFavCrypto,
    required TResult Function(CoinsModel cryptoData) updateFav,
    required TResult Function(String query) searchCrypto,
  }) {
    return getCrypto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCrypto,
    TResult? Function()? getFavCrypto,
    TResult? Function(CoinsModel cryptoData)? updateFav,
    TResult? Function(String query)? searchCrypto,
  }) {
    return getCrypto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCrypto,
    TResult Function()? getFavCrypto,
    TResult Function(CoinsModel cryptoData)? updateFav,
    TResult Function(String query)? searchCrypto,
    required TResult orElse(),
  }) {
    if (getCrypto != null) {
      return getCrypto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCrypto value) getCrypto,
    required TResult Function(GetFavCrypto value) getFavCrypto,
    required TResult Function(UpdateFav value) updateFav,
    required TResult Function(SearchCrypto value) searchCrypto,
  }) {
    return getCrypto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCrypto value)? getCrypto,
    TResult? Function(GetFavCrypto value)? getFavCrypto,
    TResult? Function(UpdateFav value)? updateFav,
    TResult? Function(SearchCrypto value)? searchCrypto,
  }) {
    return getCrypto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCrypto value)? getCrypto,
    TResult Function(GetFavCrypto value)? getFavCrypto,
    TResult Function(UpdateFav value)? updateFav,
    TResult Function(SearchCrypto value)? searchCrypto,
    required TResult orElse(),
  }) {
    if (getCrypto != null) {
      return getCrypto(this);
    }
    return orElse();
  }
}

abstract class GetCrypto implements CoinsEvent {
  const factory GetCrypto() = _$GetCrypto;
}

/// @nodoc
abstract class _$$GetFavCryptoCopyWith<$Res> {
  factory _$$GetFavCryptoCopyWith(
          _$GetFavCrypto value, $Res Function(_$GetFavCrypto) then) =
      __$$GetFavCryptoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavCryptoCopyWithImpl<$Res>
    extends _$CoinsEventCopyWithImpl<$Res, _$GetFavCrypto>
    implements _$$GetFavCryptoCopyWith<$Res> {
  __$$GetFavCryptoCopyWithImpl(
      _$GetFavCrypto _value, $Res Function(_$GetFavCrypto) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFavCrypto with DiagnosticableTreeMixin implements GetFavCrypto {
  const _$GetFavCrypto();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoinsEvent.getFavCrypto()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CoinsEvent.getFavCrypto'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFavCrypto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCrypto,
    required TResult Function() getFavCrypto,
    required TResult Function(CoinsModel cryptoData) updateFav,
    required TResult Function(String query) searchCrypto,
  }) {
    return getFavCrypto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCrypto,
    TResult? Function()? getFavCrypto,
    TResult? Function(CoinsModel cryptoData)? updateFav,
    TResult? Function(String query)? searchCrypto,
  }) {
    return getFavCrypto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCrypto,
    TResult Function()? getFavCrypto,
    TResult Function(CoinsModel cryptoData)? updateFav,
    TResult Function(String query)? searchCrypto,
    required TResult orElse(),
  }) {
    if (getFavCrypto != null) {
      return getFavCrypto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCrypto value) getCrypto,
    required TResult Function(GetFavCrypto value) getFavCrypto,
    required TResult Function(UpdateFav value) updateFav,
    required TResult Function(SearchCrypto value) searchCrypto,
  }) {
    return getFavCrypto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCrypto value)? getCrypto,
    TResult? Function(GetFavCrypto value)? getFavCrypto,
    TResult? Function(UpdateFav value)? updateFav,
    TResult? Function(SearchCrypto value)? searchCrypto,
  }) {
    return getFavCrypto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCrypto value)? getCrypto,
    TResult Function(GetFavCrypto value)? getFavCrypto,
    TResult Function(UpdateFav value)? updateFav,
    TResult Function(SearchCrypto value)? searchCrypto,
    required TResult orElse(),
  }) {
    if (getFavCrypto != null) {
      return getFavCrypto(this);
    }
    return orElse();
  }
}

abstract class GetFavCrypto implements CoinsEvent {
  const factory GetFavCrypto() = _$GetFavCrypto;
}

/// @nodoc
abstract class _$$UpdateFavCopyWith<$Res> {
  factory _$$UpdateFavCopyWith(
          _$UpdateFav value, $Res Function(_$UpdateFav) then) =
      __$$UpdateFavCopyWithImpl<$Res>;
  @useResult
  $Res call({CoinsModel cryptoData});

  $CoinsModelCopyWith<$Res> get cryptoData;
}

/// @nodoc
class __$$UpdateFavCopyWithImpl<$Res>
    extends _$CoinsEventCopyWithImpl<$Res, _$UpdateFav>
    implements _$$UpdateFavCopyWith<$Res> {
  __$$UpdateFavCopyWithImpl(
      _$UpdateFav _value, $Res Function(_$UpdateFav) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoData = null,
  }) {
    return _then(_$UpdateFav(
      cryptoData: null == cryptoData
          ? _value.cryptoData
          : cryptoData // ignore: cast_nullable_to_non_nullable
              as CoinsModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinsModelCopyWith<$Res> get cryptoData {
    return $CoinsModelCopyWith<$Res>(_value.cryptoData, (value) {
      return _then(_value.copyWith(cryptoData: value));
    });
  }
}

/// @nodoc

class _$UpdateFav with DiagnosticableTreeMixin implements UpdateFav {
  const _$UpdateFav({required this.cryptoData});

  @override
  final CoinsModel cryptoData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoinsEvent.updateFav(cryptoData: $cryptoData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoinsEvent.updateFav'))
      ..add(DiagnosticsProperty('cryptoData', cryptoData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFav &&
            (identical(other.cryptoData, cryptoData) ||
                other.cryptoData == cryptoData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cryptoData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFavCopyWith<_$UpdateFav> get copyWith =>
      __$$UpdateFavCopyWithImpl<_$UpdateFav>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCrypto,
    required TResult Function() getFavCrypto,
    required TResult Function(CoinsModel cryptoData) updateFav,
    required TResult Function(String query) searchCrypto,
  }) {
    return updateFav(cryptoData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCrypto,
    TResult? Function()? getFavCrypto,
    TResult? Function(CoinsModel cryptoData)? updateFav,
    TResult? Function(String query)? searchCrypto,
  }) {
    return updateFav?.call(cryptoData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCrypto,
    TResult Function()? getFavCrypto,
    TResult Function(CoinsModel cryptoData)? updateFav,
    TResult Function(String query)? searchCrypto,
    required TResult orElse(),
  }) {
    if (updateFav != null) {
      return updateFav(cryptoData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCrypto value) getCrypto,
    required TResult Function(GetFavCrypto value) getFavCrypto,
    required TResult Function(UpdateFav value) updateFav,
    required TResult Function(SearchCrypto value) searchCrypto,
  }) {
    return updateFav(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCrypto value)? getCrypto,
    TResult? Function(GetFavCrypto value)? getFavCrypto,
    TResult? Function(UpdateFav value)? updateFav,
    TResult? Function(SearchCrypto value)? searchCrypto,
  }) {
    return updateFav?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCrypto value)? getCrypto,
    TResult Function(GetFavCrypto value)? getFavCrypto,
    TResult Function(UpdateFav value)? updateFav,
    TResult Function(SearchCrypto value)? searchCrypto,
    required TResult orElse(),
  }) {
    if (updateFav != null) {
      return updateFav(this);
    }
    return orElse();
  }
}

abstract class UpdateFav implements CoinsEvent {
  const factory UpdateFav({required final CoinsModel cryptoData}) = _$UpdateFav;

  CoinsModel get cryptoData;
  @JsonKey(ignore: true)
  _$$UpdateFavCopyWith<_$UpdateFav> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCryptoCopyWith<$Res> {
  factory _$$SearchCryptoCopyWith(
          _$SearchCrypto value, $Res Function(_$SearchCrypto) then) =
      __$$SearchCryptoCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchCryptoCopyWithImpl<$Res>
    extends _$CoinsEventCopyWithImpl<$Res, _$SearchCrypto>
    implements _$$SearchCryptoCopyWith<$Res> {
  __$$SearchCryptoCopyWithImpl(
      _$SearchCrypto _value, $Res Function(_$SearchCrypto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchCrypto(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCrypto with DiagnosticableTreeMixin implements SearchCrypto {
  const _$SearchCrypto({required this.query});

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoinsEvent.searchCrypto(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoinsEvent.searchCrypto'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCrypto &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCryptoCopyWith<_$SearchCrypto> get copyWith =>
      __$$SearchCryptoCopyWithImpl<_$SearchCrypto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCrypto,
    required TResult Function() getFavCrypto,
    required TResult Function(CoinsModel cryptoData) updateFav,
    required TResult Function(String query) searchCrypto,
  }) {
    return searchCrypto(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCrypto,
    TResult? Function()? getFavCrypto,
    TResult? Function(CoinsModel cryptoData)? updateFav,
    TResult? Function(String query)? searchCrypto,
  }) {
    return searchCrypto?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCrypto,
    TResult Function()? getFavCrypto,
    TResult Function(CoinsModel cryptoData)? updateFav,
    TResult Function(String query)? searchCrypto,
    required TResult orElse(),
  }) {
    if (searchCrypto != null) {
      return searchCrypto(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCrypto value) getCrypto,
    required TResult Function(GetFavCrypto value) getFavCrypto,
    required TResult Function(UpdateFav value) updateFav,
    required TResult Function(SearchCrypto value) searchCrypto,
  }) {
    return searchCrypto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCrypto value)? getCrypto,
    TResult? Function(GetFavCrypto value)? getFavCrypto,
    TResult? Function(UpdateFav value)? updateFav,
    TResult? Function(SearchCrypto value)? searchCrypto,
  }) {
    return searchCrypto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCrypto value)? getCrypto,
    TResult Function(GetFavCrypto value)? getFavCrypto,
    TResult Function(UpdateFav value)? updateFav,
    TResult Function(SearchCrypto value)? searchCrypto,
    required TResult orElse(),
  }) {
    if (searchCrypto != null) {
      return searchCrypto(this);
    }
    return orElse();
  }
}

abstract class SearchCrypto implements CoinsEvent {
  const factory SearchCrypto({required final String query}) = _$SearchCrypto;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchCryptoCopyWith<_$SearchCrypto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoinsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<dynamic> get cryptosData => throw _privateConstructorUsedError;
  List<CoinsModel> get favCryptos => throw _privateConstructorUsedError;
  List<String> get favCryptoIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinsStateCopyWith<CoinsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinsStateCopyWith<$Res> {
  factory $CoinsStateCopyWith(
          CoinsState value, $Res Function(CoinsState) then) =
      _$CoinsStateCopyWithImpl<$Res, CoinsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<dynamic> cryptosData,
      List<CoinsModel> favCryptos,
      List<String> favCryptoIds});
}

/// @nodoc
class _$CoinsStateCopyWithImpl<$Res, $Val extends CoinsState>
    implements $CoinsStateCopyWith<$Res> {
  _$CoinsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? cryptosData = null,
    Object? favCryptos = null,
    Object? favCryptoIds = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      cryptosData: null == cryptosData
          ? _value.cryptosData
          : cryptosData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      favCryptos: null == favCryptos
          ? _value.favCryptos
          : favCryptos // ignore: cast_nullable_to_non_nullable
              as List<CoinsModel>,
      favCryptoIds: null == favCryptoIds
          ? _value.favCryptoIds
          : favCryptoIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinsStateCopyWith<$Res>
    implements $CoinsStateCopyWith<$Res> {
  factory _$$_CoinsStateCopyWith(
          _$_CoinsState value, $Res Function(_$_CoinsState) then) =
      __$$_CoinsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<dynamic> cryptosData,
      List<CoinsModel> favCryptos,
      List<String> favCryptoIds});
}

/// @nodoc
class __$$_CoinsStateCopyWithImpl<$Res>
    extends _$CoinsStateCopyWithImpl<$Res, _$_CoinsState>
    implements _$$_CoinsStateCopyWith<$Res> {
  __$$_CoinsStateCopyWithImpl(
      _$_CoinsState _value, $Res Function(_$_CoinsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? cryptosData = null,
    Object? favCryptos = null,
    Object? favCryptoIds = null,
  }) {
    return _then(_$_CoinsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      cryptosData: null == cryptosData
          ? _value._cryptosData
          : cryptosData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      favCryptos: null == favCryptos
          ? _value._favCryptos
          : favCryptos // ignore: cast_nullable_to_non_nullable
              as List<CoinsModel>,
      favCryptoIds: null == favCryptoIds
          ? _value._favCryptoIds
          : favCryptoIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_CoinsState with DiagnosticableTreeMixin implements _CoinsState {
  const _$_CoinsState(
      {required this.isLoading,
      required this.isError,
      required final List<dynamic> cryptosData,
      required final List<CoinsModel> favCryptos,
      required final List<String> favCryptoIds})
      : _cryptosData = cryptosData,
        _favCryptos = favCryptos,
        _favCryptoIds = favCryptoIds;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<dynamic> _cryptosData;
  @override
  List<dynamic> get cryptosData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cryptosData);
  }

  final List<CoinsModel> _favCryptos;
  @override
  List<CoinsModel> get favCryptos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favCryptos);
  }

  final List<String> _favCryptoIds;
  @override
  List<String> get favCryptoIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favCryptoIds);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoinsState(isLoading: $isLoading, isError: $isError, cryptosData: $cryptosData, favCryptos: $favCryptos, favCryptoIds: $favCryptoIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoinsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError))
      ..add(DiagnosticsProperty('cryptosData', cryptosData))
      ..add(DiagnosticsProperty('favCryptos', favCryptos))
      ..add(DiagnosticsProperty('favCryptoIds', favCryptoIds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._cryptosData, _cryptosData) &&
            const DeepCollectionEquality()
                .equals(other._favCryptos, _favCryptos) &&
            const DeepCollectionEquality()
                .equals(other._favCryptoIds, _favCryptoIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_cryptosData),
      const DeepCollectionEquality().hash(_favCryptos),
      const DeepCollectionEquality().hash(_favCryptoIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinsStateCopyWith<_$_CoinsState> get copyWith =>
      __$$_CoinsStateCopyWithImpl<_$_CoinsState>(this, _$identity);
}

abstract class _CoinsState implements CoinsState {
  const factory _CoinsState(
      {required final bool isLoading,
      required final bool isError,
      required final List<dynamic> cryptosData,
      required final List<CoinsModel> favCryptos,
      required final List<String> favCryptoIds}) = _$_CoinsState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<dynamic> get cryptosData;
  @override
  List<CoinsModel> get favCryptos;
  @override
  List<String> get favCryptoIds;
  @override
  @JsonKey(ignore: true)
  _$$_CoinsStateCopyWith<_$_CoinsState> get copyWith =>
      throw _privateConstructorUsedError;
}
