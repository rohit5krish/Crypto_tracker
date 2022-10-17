import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triveous_machine_test/application/bloc/coins_bloc.dart';
import 'package:triveous_machine_test/core/constants.dart';
import 'package:triveous_machine_test/domain/coins_model/coins_model.dart';

class CryptoDetailsWidget extends StatelessWidget {
  final CoinsModel cryptoData;

  const CryptoDetailsWidget({
    Key? key,
    required this.cryptoData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding:
            const EdgeInsets.only(left: 10, bottom: 15, top: 15, right: 15),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(cryptoData.image!),
              backgroundColor: Colors.white,
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100,
                  child: Text(
                    cryptoData.name!,
                    style: blackTxt18B,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  cryptoData.symbol!.toUpperCase(),
                  style: blackTxt16,
                )
              ],
            ),
            const Spacer(),
            Text('${cryptoData.currentPrice}', style: blackTxt16B),
            const Spacer(),
            BlocBuilder<CoinsBloc, CoinsState>(
              builder: (context, state) {
                return IconButton(
                    onPressed: () {
                      BlocProvider.of<CoinsBloc>(context)
                          .add(UpdateFav(cryptoData: cryptoData));
                      BlocProvider.of<CoinsBloc>(context).add(GetFavCrypto());
                    },
                    icon: state.favCryptoIds.contains(cryptoData.id)
                        ? Icon(
                            Icons.favorite,
                            size: 28,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.favorite_border,
                            size: 28,
                          ));
              },
            )
          ],
        ),
      ),
    );
  }
}
