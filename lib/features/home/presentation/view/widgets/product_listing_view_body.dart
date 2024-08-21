import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/widgets/product_custom_product.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/categories_details_cubit/category_details_cubit.dart';

class ProductListingViewBody extends StatelessWidget {
  const ProductListingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryDetailsCubit, CategoryDetailsState>(
      builder: (context, state) {
        return state is CategoryDetailsLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: kCyanColor,
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: () {},
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 160 / 230,
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
                      ),
                    ),
                  ),
                ),
              );
      },
    );
  }
}
