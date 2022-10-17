import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triveous_machine_test/application/bloc/coins_bloc.dart';
import 'package:triveous_machine_test/core/constants.dart';
import 'package:triveous_machine_test/infrastructure/firestore/firestore_methods.dart';
import 'package:triveous_machine_test/presentation/widgets/crypto_detail_widget.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          'Favorites',
          style: blackTxt20,
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: BlocBuilder<CoinsBloc, CoinsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state.favCryptos.isEmpty) {
            return Center(child: Text('No Favorite Cryptos Added.'));
          }
          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(15),
              itemCount: state.favCryptos.length,
              itemBuilder: (context, index) {
                return CryptoDetailsWidget(cryptoData: state.favCryptos[index]);
              });
        },
      ),
    );
  }
}
