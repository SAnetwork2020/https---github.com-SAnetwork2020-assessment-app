import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vast_assessment/extension.dart';

import '../color.dart';
import '../gen/assets.gen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      unselectedItemColor: kLightGrey,
      fixedColor: kPryBlue,
      selectedLabelStyle: TextStyle(
          color: kPryBlue,
          fontWeight: FontWeight.w600,
          fontSize: 10.sp,
          height: 12.19.toLineHeight(10)),
      unselectedLabelStyle: TextStyle(
          color: kLightGrey,
          fontWeight: FontWeight.w600,
          fontSize: 10.sp,
          height: 12.19.toLineHeight(10)),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.icons.home.path,
            color: kLightGrey,
          ),
          label: "Home",
          activeIcon: SvgPicture.asset(
            Assets.icons.home.path,
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(Assets.icons.savings.path),
          label: "Savings",
          activeIcon: SvgPicture.asset(
            Assets.icons.savings.path,
            color: kPryBlue,
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(Assets.icons.cashback.path),
          label: "Cashback",
          activeIcon: SvgPicture.asset(
            Assets.icons.cashback.path,
            color: kPryBlue,
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(Assets.icons.more.path),
          label: "More",
          activeIcon: SvgPicture.asset(
            Assets.icons.more.path,
            color: kPryBlue,
          ),
        ),
      ],
    );
  }
}
