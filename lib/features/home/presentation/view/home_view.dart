import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/api/dio_consumer.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/logo_of_app.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_cubit.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoriesCubit(
        DioConsumer(
          dio: Dio(),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kWhiteColor,
          surfaceTintColor: kWhiteColor,
          title: const LogoOfApp(),
          actions: [
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                Assets.searchIcon,
                color: kBlackColor,
                width: 32,
                height: 32,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                Assets.profileIcon,
                color: kBlackColor,
                width: 32,
                height: 32,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: const HomeViewBody(),
      ),
    );
  }
}
