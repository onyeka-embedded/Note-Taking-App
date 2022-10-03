import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class PlanContainer extends StatelessWidget {
   PlanContainer({Key? key, required this.color,  required this.width, required this.text1, required this.text2, required this.text3})
      : super(key: key);
   Color color;
   double width;
   String text1;
  final String text2;
  final String text3;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0),
      decoration: BoxDecoration(
          color: AppColors.planBoxColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: color,
            width: width,
          )),
      alignment: Alignment.center,
      height: 147.h,
      width: 147.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: TextStyle(
              fontFamily: "Nunito",
              // height:1.6.h,
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.smallTextColor,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            text2,
            style: TextStyle(
              fontFamily: "Nunito",
              // height:1.6.h,
              fontSize: 25.sp,
              fontWeight: FontWeight.w900,
              color: AppColors.smallTextColor,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            text3,
            style: TextStyle(
              fontFamily: "Nunito",
              // height:1.6.h,
              fontSize: 13.sp,
              fontWeight: FontWeight.w800,
              color: AppColors.smallTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
