
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constans.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BuildItem(
            img: 'assets/icons/calendar.svg',
            text: 'Today',
            press: () {},
          ),
          BuildItem(
            img: 'assets/icons/gym.svg',
            text: 'Excrecises',
            press: () {},
            isActive: true,
          ),
          BuildItem(
            img: 'assets/icons/Settings.svg',
            text: 'Settings',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class BuildItem extends StatelessWidget {
  const BuildItem({
    super.key,
    required this.img,
    required this.text,
    required this.press,
    this.isActive = false,
  });

  final String img, text;
  final Function press;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: () {
          press();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              img,
              // ignore: deprecated_member_use
              color: isActive ? kActiveIconColor : kTextColor,
            ),
            Text(
              text,
              style: TextStyle(
                color: isActive ? kActiveIconColor : kTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
