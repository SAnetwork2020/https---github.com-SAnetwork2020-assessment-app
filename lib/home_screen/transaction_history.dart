import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vast_assessment/extension.dart';

import '../color.dart';
import '../gen/assets.gen.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            40.toColumnSizedBox(),
            // 20.toColumnSizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transaction History",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    height: 19.09.toLineHeight(16),
                    color: kMainBlack,
                  ),
                ),
                Container(
                  height: 48.w,
                  width: 48.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffF2F2F2),
                  ),
                  child: Center(
                    child:
                        SvgPicture.asset(Assets.icons.transactionHistory.path),
                  ),
                ),
              ],
            ),
            24.toColumnSizedBox(),
            Text(
              "Today",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                height: 16.71.toLineHeight(14),
                color: kGrey,
              ),
            ),
            16.toColumnSizedBox(),

            HistoryComponent(
              desc: 'Travel',
              iconColor: const Color(0xffD3F8EC),
              price1: '-10.',
              price2: '60',
              title: '7G Apartment',
              icon: Assets.icons.travel.path,
            ),
            24.toColumnSizedBox(),
            HistoryComponent(
              desc: 'Healthcare',
              iconColor: const Color(0xffF7D2F5),
              price1: '-2.',
              price2: '13',
              title: 'CP',
              icon: Assets.icons.healthcare.path,
            ),
            16.toColumnSizedBox(),
            Text(
              "Yesterday",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                height: 16.71.toLineHeight(14),
                color: kGrey,
              ),
            ),
            16.toColumnSizedBox(),
            HistoryComponent(
              desc: 'Travel',
              iconColor: const Color(0xffD3F8EC),
              price1: '-10.',
              price2: '60',
              title: '7G Apartment',
              icon: Assets.icons.travel.path,
            ),
            24.toColumnSizedBox(),
            HistoryComponent(
              desc: 'Healthcare',
              iconColor: const Color(0xffF7D2F5),
              price1: '-2.',
              price2: '13',
              title: 'CP',
              icon: Assets.icons.healthcare.path,
            ),
            16.toColumnSizedBox(),
          ],
        ),
      ),
    );
  }
}

class HistoryComponent extends StatelessWidget {
  const HistoryComponent({
    super.key,
    required this.iconColor,
    required this.title,
    required this.desc,
    required this.price1,
    required this.price2,
    required this.icon,
  });
  final Color iconColor;
  final String title, desc, price1, price2, icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 48.w,
              width: 48.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: iconColor,
              ),
              child: Center(
                child: SvgPicture.asset(icon),
              ),
            ),
            16.toRowSizedBox(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    height: 19.09.toLineHeight(16),
                    color: kMainBlack,
                  ),
                ),
                4.toColumnSizedBox(),
                Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    height: 16.71.toLineHeight(14),
                    color: kGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text.rich(
          TextSpan(
            text: price1,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
              height: 23.87.toLineHeight(20),
              color: kMainBlack,
            ),
            children: [
              TextSpan(
                text: "$price2\$",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  height: 23.87.toLineHeight(14),
                  color: kGrey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
