import 'package:e_commerce/cubits/getProducts_cubit.dart';
import 'package:e_commerce/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'cubits/login_cubit.dart';
import 'cubits/signup_cubit.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  ThemeData myTheme = ThemeData(
    primaryColor: const Color(0xff40BFFF),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignUpCubit(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
         BlocProvider(
        create: (context) => GetProductsCubit()..getProducts(),
         )
      ],
        child: MaterialApp(
          theme: myTheme,
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
        ),
    );
  }
}
