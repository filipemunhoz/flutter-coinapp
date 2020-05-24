import 'package:coinapp/blocs/crypto/crypto_bloc.dart';
import 'package:coinapp/repositories/crypto_repository.dart';
import 'package:coinapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CryptoBloc>(
      create: (_) => CryptoBloc(
        cryptoRepository: CryptoRepository(),
    )..add(AppStarted()),
      child: MaterialApp(
        title: 'Flutter Crypto App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.tealAccent,
        ),

        home: HomeScreen(),
      ),
    );
  }
}
