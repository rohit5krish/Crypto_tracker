part of 'coins_bloc.dart';

@freezed
class CoinsEvent with _$CoinsEvent {
  const factory CoinsEvent.getCrypto() = GetCrypto;
  const factory CoinsEvent.getFavCrypto() = GetFavCrypto;
  const factory CoinsEvent.updateFav({
    required CoinsModel cryptoData,
  }) = UpdateFav;
  const factory CoinsEvent.searchCrypto({
    required String query,
  }) = SearchCrypto;
}
