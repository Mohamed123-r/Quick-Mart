import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/api/dio_consumer.dart';
import 'package:quick_mart/core/database/cache/cache_helper.dart';
import 'package:quick_mart/features/cart/presentation/manage/cart_cubit/cart_cubit.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_cubit/categories_cubit.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_details_cubit/category_details_cubit.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/home_cubit/home_cubit.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/product_details_cubit/product_details_cubit.dart';
import 'package:quick_mart/features/splash/presentation/view/splash_view.dart';
import 'package:quick_mart/features/wishlist/presentation/manage/wishlist_cubit/wishlist_cubit.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: kWhiteColor, // navigation bar color
      statusBarColor: kWhiteColor,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(
            DioConsumer(
              dio: Dio(),
            ),
          )..getHomeData(),
        ),
        BlocProvider(
          create: (context) => CartCubit(
            DioConsumer(
              dio: Dio(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => WishlistCubit(
            DioConsumer(
              dio: Dio(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => CategoriesCubit(
            DioConsumer(
              dio: Dio(),
            ),
          )..getCategories(),
        ),
        BlocProvider(
          create: (context) => CategoryDetailsCubit(
            DioConsumer(
              dio: Dio(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => ProductDetailsCubit(
            DioConsumer(
              dio: Dio(),
            ),
          ),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashView(),
      ),
    );
  }
}
