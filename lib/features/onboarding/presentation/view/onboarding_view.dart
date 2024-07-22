import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';
import 'package:quick_mart/features/onboarding/presentation/view/widgets/onboarding_bottom_navigation_bar.dart';
import 'package:quick_mart/features/onboarding/presentation/view/widgets/onboarding_view_body.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView>
    with TickerProviderStateMixin {
  TabController? _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _controller = TabController(length: 3, vsync: this);
    _controller!.addListener(() {
      setState(() {
        _selectedIndex = _controller!.index;
      });
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        bottomNavigationBar: OnboardingBottomNavigationBar(
          selectedIndex: _selectedIndex,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: TabBarView(
                    controller: _controller,
                    children: [
                      OnboardingViewBody(
                        theFirst: true,
                        onPressedToSkip: () {
                          _controller?.animateTo(_selectedIndex = 2);
                          setState(() {});
                        },
                        image: Assets.onboarding1,
                        title: 'Explore a wide range of \n products',
                        subTitle: 'Explore a wide range of products at your \n'
                            ' fingertips. QuickMart offers an extensive \n'
                            ' collection to suit your needs.',
                      ),
                      OnboardingViewBody(
                        onPressedToSkip: () {
                          _controller?.animateTo(_selectedIndex = 2);
                          setState(() {});
                        },
                        onPressedToBack: () {
                          _controller?.animateTo(_selectedIndex -= 1);
                          setState(() {});
                        },
                        image: Assets.onboarding2,
                        title: 'Unlock exclusive offers \n and discounts',
                        subTitle:
                            'Get access to limited-time deals and special \n'
                            ' promotions available only to our valued \n'
                            ' customers.',
                      ),
                      OnboardingViewBody(
                        theLast: true,
                        onPressedToBack: () {
                          _controller?.animateTo(_selectedIndex -= 1);
                          setState(() {});
                        },
                        image: Assets.onboarding3,
                        title: 'Safe and secure \n payments',
                        subTitle:
                            ' QuickMart employs industry-leading encryption \n'
                            ' and trusted payment gateways to safeguard your \n'
                            ' financial information.',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              _selectedIndex == 2
                  ? Row(
                      children: [
                        SecondaryBottom(
                          width: (MediaQuery.of(context).size.width - 40) * 0.5,
                          title: 'Login ',
                          onPressed: () {},
                        ),
                        const Spacer(),
                        PrimaryBottom(
                          width: (MediaQuery.of(context).size.width - 40) * 0.5,
                          title: 'Get Started',
                          onPressed: () {},
                        ),
                      ],
                    )
                  : PrimaryBottom(
                      title: 'Next',
                      onPressed: () {
                        _controller?.animateTo(_selectedIndex += 1);
                        setState(
                          () {},
                        );
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
