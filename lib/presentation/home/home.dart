import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triveous_machine_test/application/bloc/coins_bloc.dart';
import 'package:triveous_machine_test/core/constants.dart';
import 'package:triveous_machine_test/infrastructure/authentication/auth_methods.dart';
import 'package:triveous_machine_test/presentation/favorites/favorites.dart';
import 'package:triveous_machine_test/presentation/home/functionalities/signout_alert.dart';
import 'package:triveous_machine_test/presentation/widgets/crypto_detail_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final searchCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CoinsBloc>(context).add(GetCrypto());
    });
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: InkWell(
        highlightColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
          BlocProvider.of<CoinsBloc>(context).add(GetCrypto());
        },
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          return signoutAlert(context);
                        },
                        icon: Icon(
                          Icons.logout,
                          size: 28,
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return FavoriteScreen();
                          }));
                        },
                        icon: const Icon(
                          Icons.favorite,
                          size: 30,
                        )),
                  ],
                ),
                sbHeight20,
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: screenSize.width - 80,
                      child: TextFormField(
                        controller: searchCtrl,
                        style: blackTxt16,
                        onFieldSubmitted: (value) {
                          BlocProvider.of<CoinsBloc>(context)
                              .add(SearchCrypto(query: value));
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: 'Search Currencies',
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: IconButton(
                              onPressed: () {
                                searchCtrl.clear();
                                BlocProvider.of<CoinsBloc>(context)
                                    .add(SearchCrypto(query: ''));
                              },
                              icon: Icon(Icons.close)),
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          BlocProvider.of<CoinsBloc>(context)
                              .add(SearchCrypto(query: searchCtrl.text));
                        },
                        icon: Icon(Icons.search)),
                    const Spacer()
                  ],
                ),
                sbHeight20,
                BlocBuilder<CoinsBloc, CoinsState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return Center(child: CircularProgressIndicator());
                    } else if (state.isError) {
                      return Center(child: Text('Error Occured!'));
                    }
                    return Expanded(
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: state.cryptosData.length,
                          itemBuilder: (context, index) {
                            return CryptoDetailsWidget(
                                cryptoData: state.cryptosData[index]);
                          }),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
