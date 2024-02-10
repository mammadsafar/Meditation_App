import 'package:flutter/material.dart';
import 'package:meditation_app/widgets/buttonnav_items_widget.dart';

class ButtonNavBar extends StatelessWidget {
  const ButtonNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BuildButtonNavItem(
            svgSrc: 'assets/icons/calendar.svg',
            title: 'امروز',
            isActive: false,
          ),
          BuildButtonNavItem(
            svgSrc: 'assets/icons/gym.svg',
            title: 'تمرینات',
            isActive: true,
          ),
          BuildButtonNavItem(
            svgSrc: 'assets/icons/Settings.svg',
            title: 'تنظیمات',
            isActive: false,
          ),
        ],
      ),
    );
  }
}
