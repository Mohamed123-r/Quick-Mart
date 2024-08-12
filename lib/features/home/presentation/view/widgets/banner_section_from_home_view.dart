import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/core/widgets/product_custom_banner.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/home_cubit.dart';

class BannerSectionFromHomeView extends StatefulWidget {
  const BannerSectionFromHomeView({super.key});

  @override
  State<BannerSectionFromHomeView> createState() =>
      _BannerSectionFromHomeViewState();
}

class _BannerSectionFromHomeViewState extends State<BannerSectionFromHomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return ProductCustomBanner(
          items: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: NetworkImage(context
                      .read<HomeCubit>()
                      .homeModel!
                      .data!
                      .banners![0]
                      .image
                      .toString()),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
          lengthItem: 1,
        );
      },
    );
  }
}
