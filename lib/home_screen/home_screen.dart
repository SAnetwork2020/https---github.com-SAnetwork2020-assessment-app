import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vast_assessment/color.dart';
import 'package:vast_assessment/extension.dart';
import 'package:vast_assessment/home_screen/transaction_type.dart';

import '../gen/assets.gen.dart';
import 'bottom_navbar.dart';
import 'transaction_history.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  static const List<Tab> tabs = <Tab>[
    Tab(text: "Wallet"),
    Tab(text: "Cards"),
  ];

  @override
  void initState() {
    tabController = TabController(
      initialIndex: 0,
      length: tabs.length,
      vsync: this,
    );

    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // bottom: TabBar(
        //   controller: tabController,
        //   tabs: tabs,
        // ),
        elevation: 0,
        backgroundColor: kPryBlue,
        title: Text(
          "Hello Ese",
          // textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            height: 19.09.toLineHeight(16),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SvgPicture.asset(Assets.icons.notification.path),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 337.h,
            width: 375.w,
            color: kPryBlue,
            child: Column(
              children: [
                Text(
                  "Wallet Balance",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    height: 16.71.toLineHeight(14),
                    color: kPryWhite,
                  ),
                ),
                16.toColumnSizedBox(),
                Text.rich(
                  TextSpan(
                    text: "₦25,456.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 36.sp,
                      height: 42.96.toLineHeight(36),
                      color: kPryWhite,
                    ),
                    children: [
                      TextSpan(
                        text: "00",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 30.sp,
                          height: 35.8.toLineHeight(30),
                          color: kPryWhite,
                        ),
                      ),
                    ],
                  ),
                ),
                74.toColumnSizedBox(),
                TransactionType(),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Wallet",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          height: 24.toLineHeight(14),
                          color: kPryWhite,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Card",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          height: 24.toLineHeight(14),
                          color: kPryWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const TransactionHistory(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
