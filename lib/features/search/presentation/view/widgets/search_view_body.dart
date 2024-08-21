import 'package:flutter/material.dart';
import 'package:quick_mart/core/widgets/custom_search.dart';
import 'package:quick_mart/features/home/presentation/manage/cubits/home_cubit/home_cubit.dart';
import 'package:quick_mart/features/search/presentation/view/widgets/bottom_sheet_from_filter.dart';
import 'package:quick_mart/features/search/presentation/view/widgets/custom_product.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  TextEditingController controller = TextEditingController();
  String searchText = '';
  List<Map<String, dynamic>> answerdList = [];
  List<int> indexProduct = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 8),
          CustomSearch(
            controller: controller,
            onChanged: (text) {
              answerdList.clear();
              indexProduct.clear();
              searchText = text;
              for (var i = 0; i < dataOfHome.length; i++) {
                if (dataOfHome[i]['name']
                    .toLowerCase()
                    .contains(text.toLowerCase())) {
                  answerdList.add(dataOfHome[i]);
                  indexProduct.add(i);
                }
              }
              setState(() {});
            },
            onTapFromSuffixIcon: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                context: context,
                builder: (context) => const BottomSheetFromFilter(),
              );
            },
          ),
          searchText.isNotEmpty && answerdList.isEmpty
              ? const Expanded(
                  child: Center(
                      child: Text(
                  'No results . \n search about product.',
                  textAlign: TextAlign.center,
                )))
              : CustomProductGridView(
                  productsList: answerdList.isEmpty ? dataOfHome : answerdList,
                  indexProduct: indexProduct.isEmpty
                      ? List.generate(dataOfHome.length, (index) => index)
                      : indexProduct,
                ),
        ],
      ),
    );
  }
}
