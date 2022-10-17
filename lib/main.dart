import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triveous_machine_test/application/bloc/coins_bloc.dart';
import 'package:triveous_machine_test/core/constants.dart';
import 'package:triveous_machine_test/presentation/home/home.dart';
import 'package:triveous_machine_test/presentation/login/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(TriveousApp());
}

class TriveousApp extends StatelessWidget {
  const TriveousApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CoinsBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: defaultColor),
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Scaffold(
                  body: Center(child: CircularProgressIndicator()),
                );
              } else if (snapshot.hasData) {
                return HomeScreen();
              } else if (snapshot.hasError) {
                return Scaffold(
                  body: Center(
                      child: Text('Error  Occured. Please Try Again.',
                          style: whiteTxt16)),
                );
              } else {
                return LoginScreen();
              }
            }),
      ),
    );
  }
}
