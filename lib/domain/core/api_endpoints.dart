import 'package:triveous_machine_test/core/urls.dart';

class ApiEndpoints {
  static const String searchUrl = "$baseUrl/search";
  static const String coinsUrl =
      "$baseUrl/coins/markets?vs_currency=inr&order=market_cap_desc&per_page=100&page=1&sparkline=false";
  static const String favStartUrl = "$baseUrl/coins";
}
