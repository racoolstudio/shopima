import 'package:flutter/material.dart';
import 'package:shopima/constant.dart';

class CustomContainer extends StatelessWidget {
  double width;
  double height;
  Widget child;
  CustomContainer(
      {required this.width, required this.height, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      color: kWhiteColor,
      width: width,
      height: height,
      child: child,
    );
  }
}
