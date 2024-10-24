import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/product_details_cubit/product_details_cubit.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/image_section_from_product_detail_view.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/product_details_section_from_product_detail_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
            ? Skeletonizer(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      ImageSectionFromProductDetailView(
                        lengthItem: 1,
                        items: [
                          for (int i = 0; i < 1; i++)
                            CachedNetworkImage(
                              width: MediaQuery.of(context).size.width,
                              imageUrl: dataOfProductDetails['images'][i],
                              errorWidget: (_, __, ___) => const Icon(
                                Icons.error,
                              ),
                            ),
                        ],
                      ),
                      ProductDetailsSectionFromProductDetailView(
                        isLoading: true,
                      ),
                    ],
                  ),
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
                          CachedNetworkImage(
                            width: MediaQuery.of(context).size.width,
                            imageUrl: dataOfProductDetails['images'][i],
                            errorWidget: (_, __, ___) => const Icon(
                              Icons.error,
                            ),
                          ),
                      ],
                    ),
                    ProductDetailsSectionFromProductDetailView(),
                  ],
                ),
              );
      },
    );
  }
}
