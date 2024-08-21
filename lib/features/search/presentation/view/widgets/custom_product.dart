import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/widgets/product_custom_product.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_details_cubit/category_details_cubit.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/product_details_cubit/product_details_cubit.dart';

class CustomProductGridView extends StatelessWidget {
  const CustomProductGridView(
      {super.key, required this.productsList, required this.indexProduct});

  final List<Map<String, dynamic>> productsList;
  final List<int> indexProduct;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<CategoryDetailsCubit, CategoryDetailsState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: GridView.builder(
              itemCount: productsList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (context, index) => ProductCustomProduct(
                image: productsList[index]['image'],
                title: productsList[index]['name'],
                price: productsList[index]['price'],
                oldPrice: productsList[index]['old_price'],
                index: indexProduct[index],
                onTapGetProductDetails: () {
                  context
                      .read<ProductDetailsCubit>()
                      .getProductDetails(id: productsList[index]['id']);
                  Navigator.push(
                    context,
                    AppRouter.router(
                      const RouteSettings(name: AppRouter.kProductDetailView),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
