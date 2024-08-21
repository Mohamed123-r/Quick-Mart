import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/product_details_cubit/product_details_cubit.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/image_section_from_product_detail_view.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/product_details_section_from_product_detail_view.dart';

class ProductDetailViewBody extends StatelessWidget {
  const ProductDetailViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        //BlocProvider.of<ProductDetailsCubit>.getProductDetails());
        return state is ProductDetailsLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: kCyanColor,
                ),
              )
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    ImageSectionFromProductDetailView(
                      lengthItem: dataOfProductDetails['images'].length,
                      items: [
                        for (int i = 0;
                            i < dataOfProductDetails['images'].length;
                            i++)
                          Image.network(
                            dataOfProductDetails['images'][i],
                            // fit: BoxFit.fill,
                          ),
                      ],
                    ),
                    const ProductDetailsSectionFromProductDetailView(),
                  ],
                ),
              );
      },
    );
  }
}
