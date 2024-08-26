import 'package:e_commerce/cubits/getProducts_cubit.dart';
import 'package:e_commerce/login.dart';
import 'package:e_commerce/splash_screen.dart';
import 'package:flutter/material.dart';
import 'navigations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  ThemeData myTheme = ThemeData(
    primaryColor: const Color(0xff40BFFF),
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetProductsCubit()..getProducts(),
      child: MaterialApp(
        theme: myTheme,
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
