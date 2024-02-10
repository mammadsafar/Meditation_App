import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants/constants.dart';

class BuildButtonNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final VoidCallback? press;
  final bool isActive;
  const BuildButtonNavItem({
    super.key,
    required this.svgSrc,
    required this.title,
    this.press,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(svgSrc),
        Text(
          title,
          style: TextStyle(
            color: isActive ? kActiveIconColor : kTextColor,
            fontFamily: 'yekanBakh',
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
