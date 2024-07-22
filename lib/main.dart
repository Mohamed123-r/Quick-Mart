import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/database/cache/cache_helper.dart';
import 'package:quick_mart/features/splash/presentation/view/splash_view.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
