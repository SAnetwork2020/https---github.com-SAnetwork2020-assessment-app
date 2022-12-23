import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vast_assessment/color.dart';
import 'package:vast_assessment/extension.dart';

import '../gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPryBlue,
        title: Text(
          "Hello Ese",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            height: 19.09.toLineHeight(16),
          ),
        ),
        leading: SvgPicture.asset(Assets.icons.moneyTransfer.path),
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
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: kPryBlue,
        unselectedItemColor: kLightGrey,
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
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.savings.path),
            label: "Savings",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.cashback.path),
            label: "Cashback",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.more.path),
            label: "More",
          ),
        ],
      ),
    );
  }

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class TransactionType extends StatelessWidget {
  TransactionType({
    super.key,
  });
  List<Map<String, String>> transaction = [
    {
      "title": Assets.icons.moneyTransfer.path,
      "text":"Mony Transfer",
    },
    {
      "title": Assets.icons.otherPayment.path,
      "text":"Other Payments",
    },
    {
      "title": Assets.icons.fundWallet.path,
      "text":"Fund Wallet",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...List.generate(
          3,
          (index) => Column(
            children: [
              Container(
                height: 48.w,
                width: 48.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPryWhite,
                ),
                child: Center(
                    child: SvgPicture.asset(Assets.icons.moneyTransfer.path)),
              ),
              8.toColumnSizedBox(),
              Text(
                "${transaction[index]["title"]}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  height: 14.32.toLineHeight(12),
                  color: kPryWhite,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
