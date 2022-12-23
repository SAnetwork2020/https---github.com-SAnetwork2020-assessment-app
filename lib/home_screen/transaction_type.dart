import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vast_assessment/extension.dart';

import '../color.dart';
import '../gen/assets.gen.dart';

class TransactionType extends StatelessWidget {
  TransactionType({
    super.key,
  });
  final List<Map<String, String>> transaction = [
    {
      "icon": Assets.icons.moneyTransfer.path,
      "title": "Mony \nTransfer",
    },
    {
      "icon": Assets.icons.otherPayment.path,
      "title": "Other \nPayments",
    },
    {
      "icon": Assets.icons.fundWallet.path,
      "title": "Fund \nWallet",
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
                  child: SvgPicture.asset(transaction[index]["icon"]!),
                ),
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
