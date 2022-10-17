import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:triveous_machine_test/domain/coins_model/coins_model.dart';
import 'package:triveous_machine_test/domain/core/api_endpoints.dart';
import 'package:triveous_machine_test/domain/core/failures/main_failure.dart';

Future<Either<MainFailure, List<CoinsModel>>> getCoins() async {
  try {
    final Response response = await Dio().get(ApiEndpoints.coinsUrl);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<CoinsModel> result = (response.data as List).map((e) {
        return CoinsModel.fromJson(e);
      }).toList();
      return right(result);
    } else {
      return const Left(MainFailure.serverFailure());
    }
  } catch (e) {
    return const Left(MainFailure.clientFailure());
  }
}
