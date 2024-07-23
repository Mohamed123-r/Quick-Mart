import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CustomToast extends StatefulWidget {
  const CustomToast({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  State<CustomToast> createState() => _ToastContextState();
}

class _ToastContextState extends State<CustomToast> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    // if you want to use context from globally instead of content we need to pass navigatorKey.currentContext!
    fToast.init(context);
  }

  _showToast() {
    Widget toast = Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: kWhiteColor,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            widget.image,
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - (88),
            child: Text(
              widget.title,
              style: Styles.captionSemiBold,
            ),
          ),
        ],
      ),
    );

    // Custom Toast Position
    fToast.showToast(
        child: toast,
        toastDuration: const Duration(seconds: 3),
        positionedToastBuilder: (context, child) {
          return Positioned(
            top: 40.0,
            child: child,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(microseconds: 1),
      () {
        _showToast();
        Navigator.pop(context);
      },
    );
    return Scaffold(
      body: Center(child: Container()),
    );
  }
}
