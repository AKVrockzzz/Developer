import 'package:daily_exercise_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Today",
            svgSrc: "assets/icons/calendar.svg",
          ),
          BottomNavItem(
            title: "Today",
            svgSrc: "assets/icons/gym.svg",
            isActive: true,
          ),
          BottomNavItem(
            title: "Settings",
            svgSrc: "assets/icons/Settings.svg",
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final bool isActive;
  const BottomNavItem({
    super.key,
    required this.svgSrc,
    required this.title,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:<Widget> [
          SvgPicture.asset(
            svgSrc,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(title,
            style:
            TextStyle(
                color:
                isActive ? kActiveIconColor : kTextColor),),
        ],
      ),
    );
  }
}