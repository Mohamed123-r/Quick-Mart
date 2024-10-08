import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/product_custom_product.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/home_cubit/home_cubit.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/product_details_cubit/product_details_cubit.dart';

class ProductsSectionFromHomeView extends StatelessWidget {
  const ProductsSectionFromHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Latest Products",
                  style: Styles.heading3Bold,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            if (state is HomeLoading)
              const SizedBox(
                height: 200,
                child: Center(
                  child: CircularProgressIndicator(
                    color: kCyanColor,
                  ),
                ),
              )
            else
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: List.generate(
                  dataOfHome.length,
                  (index) => ProductCustomProduct(
                    image: dataOfHome[index]['image'],
                    title: dataOfHome[index]['name'],
                    price: dataOfHome[index]['price'],
                    oldPrice: dataOfHome[index]['old_price'],
                    index: index,
                    onTapGetProductDetails: () {
                      context
                          .read<ProductDetailsCubit>()
                          .getProductDetails(id: dataOfHome[index]['id']);
                      Navigator.push(
                        context,
                        AppRouter.router(
                          const RouteSettings(
                              name: AppRouter.kProductDetailView),
                        ),
                      );
                    },
                  ),
                ),
              )
          ],
        );
      },
    );
  }
}
