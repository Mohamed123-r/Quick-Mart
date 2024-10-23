import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/widgets/product_custom_product.dart';
import 'package:quick_mart/core/widgets/product_custom_product_loading.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_details_cubit/category_details_cubit.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/product_details_cubit/product_details_cubit.dart';

class ProductListingViewBody extends StatelessWidget {
  const ProductListingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryDetailsCubit, CategoryDetailsState>(
      builder: (context, state) {
        return state is CategoryDetailsLoading
            ? const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ProductCustomProductLoading(),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: () {},
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.74,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: List.generate(
                      dataOfCategoriesDetails.length,
                      (index) => ProductCustomProduct(
                        image: dataOfCategoriesDetails[index]['image'],
                        title: dataOfCategoriesDetails[index]['name'],
                        price: dataOfCategoriesDetails[index]['price'],
                        oldPrice: dataOfCategoriesDetails[index]['old_price'],
                        index: index,
                        onTapGetProductDetails: () {
                          context.read<ProductDetailsCubit>().getProductDetails(
                              id: dataOfCategoriesDetails[index]['id']);
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
                  ),
                ),
              );
      },
    );
  }
}
