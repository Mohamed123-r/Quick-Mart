import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/features/cart/presentation/view/my_cart_view.dart';
import 'package:quick_mart/features/home/presentation/view/categories_view.dart';
import 'package:quick_mart/features/home/presentation/view/home_view.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SizedBox(
          height: 60,
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedLabelStyle: Styles.captionSemiBold,
              selectedItemColor: kBlackColor,
              unselectedItemColor: kGrey_150Color,
              currentIndex: _selectedIndex,
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    _selectedIndex != 0 ? Assets.homeIcon : Assets.home2Icon,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    _selectedIndex != 1
                        ? Assets.categoryIcon
                        : Assets.category2Icon,
                  ),
                  label: 'Categories',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    _selectedIndex != 2
                        ? Assets.shoppingCartIcon
                        : Assets.shoppingCart2Icon,
                  ),
                  label: 'My Cart',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    _selectedIndex != 3 ? Assets.heartIcon : Assets.heart2Icon,
                  ),
                  label: 'Wishlist',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    _selectedIndex != 4
                        ? Assets.profileIcon
                        : Assets.profile2Icon,
                  ),
                  label: 'Profile',
                ),
              ]),
        ),
        body: <Widget>[
          const HomeView(),
          const CategoriesView(),
          const MyCartView(),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.purple,
          )
        ][_selectedIndex]);
  }
}
