import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triveous_machine_test/domain/coins_model/coins_model.dart';
import 'package:triveous_machine_test/domain/core/failures/main_failure.dart';
import 'package:triveous_machine_test/infrastructure/firestore/firestore_methods.dart';
import 'package:triveous_machine_test/infrastructure/get_coins/get_coins.dart';
import 'package:triveous_machine_test/infrastructure/search_coins/search_coins.dart';

part 'coins_event.dart';
part 'coins_state.dart';
part 'coins_bloc.freezed.dart';

class CoinsBloc extends Bloc<CoinsEvent, CoinsState> {
  CoinsBloc() : super(CoinsState.initial()) {
    on<GetCrypto>((event, emit) async {
      List favs = await FirestoreMethods().getSavedFavorites();
      List<CoinsModel> finalFavs = favs.map((e) {
        return CoinsModel.fromJson(e);
      }).toList();
      if (state.cryptosData.isNotEmpty) {
        emit(state);
        return;
      }
      List<String> finalFavIds = [];
      if (finalFavs.isNotEmpty) {
        finalFavIds = finalFavs.map((e) {
          return e.id!;
        }).toList();
      }
      emit(state.copyWith(isLoading: true));

      final result = await getCoins();
      final newState = result.fold((MainFailure f) {
        return CoinsState(
            isLoading: false,
            isError: true,
            cryptosData: [],
            favCryptos: finalFavs,
            favCryptoIds: finalFavIds);
      }, (List<CoinsModel> datas) {
        return CoinsState(
            isLoading: false,
            isError: false,
            cryptosData: datas,
            favCryptos: finalFavs,
            favCryptoIds: finalFavIds);
      });
      emit(newState);
    });

    on<GetFavCrypto>((event, emit) async {
      // if (state.favCryptos.isNotEmpty) {
      //   emit(state);
      //   return;
      // }
      List favs = await FirestoreMethods().getSavedFavorites();
      List<CoinsModel> finalFavs = favs.map((e) {
        return CoinsModel.fromJson(e);
      }).toList();
      List<String> finalFavIds = [];
      if (finalFavs.isNotEmpty) {
        finalFavIds = finalFavs.map((e) {
          return e.id!;
        }).toList();
      }
      emit(state.copyWith(favCryptos: finalFavs, favCryptoIds: finalFavIds));
    });

    on<UpdateFav>((event, emit) async {
      List favorites = await FirestoreMethods().getSavedFavorites();
      List<CoinsModel> finalFavs = favorites.map((e) {
        return CoinsModel.fromJson(e);
      }).toList();
      List<String> finalFavIds = [];
      if (finalFavs.isNotEmpty) {
        finalFavIds = finalFavs.map((e) {
          return e.id!;
        }).toList();
      }
      if (state.favCryptoIds.contains(event.cryptoData.id)) {
        final int idx = finalFavIds.indexOf(event.cryptoData.id!);
        await FirestoreMethods().deleteFavDb(index: idx);
        finalFavs.removeAt(idx);
        finalFavIds.remove(event.cryptoData.id);
      } else {
        await FirestoreMethods().addFavDb(crypto: event.cryptoData);
        finalFavs.add(event.cryptoData);
        finalFavIds.add(event.cryptoData.id!);
      }
      emit(state.copyWith(favCryptos: finalFavs, favCryptoIds: finalFavIds));
    });

    on<SearchCrypto>((event, emit) async {
      final res = await getCoins();
      final cryptosList = res.fold((MainFailure f) {
        return state.cryptosData;
      }, (List<CoinsModel> datas) {
        return datas;
      });
      List result;
      if (event.query.isEmpty) {
        result = cryptosList;
      } else {
        result = cryptosList
            .where(
                (element) => element.id!.startsWith(event.query.toLowerCase()))
            .toList();
      }
      emit(state.copyWith(cryptosData: result));
    });
  }
}
