import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LangContainer extends StatelessWidget {
  final dynamic topBorder;
  final dynamic bottomBorder;
  final dynamic name;
  final dynamic flag;
  final Color rang;
  final Color chiziqRangi;
  const LangContainer(
      {Key? key,
      this.topBorder,
      this.bottomBorder,
      this.name,
      this.flag,
      required this.rang,
      required this.chiziqRangi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 343.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(topBorder ?? 0),
          bottom: Radius.circular(
            (bottomBorder ?? 0),
          ),
        ),
        color: rang,
        border: Border.all(color: chiziqRangi, width: 1.w),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 16.w,
          ),
          CircleAvatar(
            radius: 20.h,
            backgroundImage: AssetImage(flag),
          ),
          SizedBox(
            width: 20.w,
          ),
          Text(
            name ?? "",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
