import 'package:freezed_annotation/freezed_annotation.dart';

part 'coins_model.g.dart';
part 'coins_model.freezed.dart';

@freezed
class CoinsModel with _$CoinsModel {
  const factory CoinsModel({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "symbol") required String? symbol,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "image") required String? image,
    @JsonKey(name: "current_price") required double? currentPrice,
  }) = _CoinsModel;

  factory CoinsModel.fromJson(Map<String, dynamic> json) =>
      _$CoinsModelFromJson(json);

  // Map<String, dynamic> toJson(CoinsModel modelData) {
  //   Map<String, dynamic> data = {
  //     "id": modelData.id,
  //     "symbol": modelData.symbol,
  //     "name": modelData.name,
  //     "image": modelData.image,
  //     "current_price": modelData.currentPrice,
  //   };
  //   // data['id'] = modelData.id;
  //   // data['symbol'] = modelData.symbol;
  //   // data['name'] = modelData.name;
  //   // data['image'] = modelData.image;
  //   // data['current_price'] = modelData.currentPrice;
  //   return data;
  // }
}
