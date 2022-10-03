import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.text, required this.fontSize}) : super(key: key);
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      width: 319.w,
      padding: EdgeInsets.only(top: 24.h, bottom: 24.h),
      margin: EdgeInsets.only(left: 28.w, right: 28.w),
      decoration: BoxDecoration(
        color: AppColors.buttonBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
           textAlign: TextAlign.center,
          text,
          style: TextStyle(
            fontFamily: "Nunito",
            fontSize: fontSize,
            fontWeight: FontWeight.w900,
            color: AppColors.buttonTextColor,
            height: 0.4.h
          ),
        ),
      ),
    );
  }
}
