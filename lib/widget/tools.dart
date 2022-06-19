import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class FontText extends StatelessWidget {
  String name;
  double fontSize;
  Color color;
  FontText({required this.name, required this.fontSize, required this.color});
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.gentiumBasic(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}

class SpaceH extends StatelessWidget {
  double horinzontal;
  SpaceH(this.horinzontal);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horinzontal,
    );
  }
}

class SpaceV extends StatelessWidget {
  double vertical;
  SpaceV(this.vertical);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: vertical,
    );
  }
}

Row optionWidget(IconData icon, String text, Widget child) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        child: Row(
          children: [
            Icon(
              icon,
              color: kBorderColor,
            ),
            SpaceH(5),
            FontText(name: text, fontSize: kfontSize16, color: kBlackColor),
          ],
        ),
      ),
      child
    ],
  );
}
