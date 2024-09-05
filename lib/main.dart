import 'package:device_preview/device_preview.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/cubits/delete_product_cubit/delete_product_cubit.dart';
import 'package:e_commerce/cubits/fetch_all_products_cubit.dart/fetch_all_meals_cubit.dart';

import 'package:e_commerce/cubits/getProducts_cubit.dart';
import 'package:e_commerce/cubits/login_cubit/login_cubit.dart';
import 'package:e_commerce/helpers/simple_bloc_observer.dart';
import 'package:e_commerce/models/products_model.dart';
import 'package:e_commerce/screens/splash_screen.dart';
import 'package:e_commerce/widgets/user_streaming.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'cubits/signup_cubit.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Hive.initFlutter();
  Hive.registerAdapter(ProductModelAdapter());
  await Hive.openBox<ProductModel>(kProductsBox);
  Bloc.observer = SimpleBlocObserver();

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const ECommerceApp(),
    ),
  );
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

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
        ),
        BlocProvider(
          create: (context) => DeleteProductCubit(),
        ),
        BlocProvider(
          create: (context) => FetchAllProductssCubit(),
        ),
      ],
      child: MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData(
          primaryColor: const Color(0xff40BFFF),
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
