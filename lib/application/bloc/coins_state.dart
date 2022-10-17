part of 'coins_bloc.dart';

@freezed
class CoinsState with _$CoinsState {
  const factory CoinsState({
    required bool isLoading,
    required bool isError,
    required List cryptosData,
    required List<CoinsModel> favCryptos,
    required List<String> favCryptoIds,
  }) = _CoinsState;
  factory CoinsState.initial() {
    return CoinsState(
        isLoading: false,
        isError: false,
        cryptosData: [],
        favCryptos: [],
        favCryptoIds: []);
  }
}
