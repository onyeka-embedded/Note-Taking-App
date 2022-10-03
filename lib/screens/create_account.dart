import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_taking_app/screens/subscribe.dart';
import 'package:page_transition/page_transition.dart';

import '../utils/colors.dart';
import '../widgets/button.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Container(
          child: Column(
            children: [
             Container(
               // color: Colors.white,
                margin: EdgeInsets.only(top: 34.h,),
                child: Text(
                  "NOTELY",
                  style: TextStyle(
                    fontFamily: "TitanOne",
                   fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor
                  ),
                ),
              ),
              SizedBox(height: 62.h,),
                Container(
                height: 34.h,
                width: 308.w,
                padding: const EdgeInsets.all(0),
                 //margin: EdgeInsets.only(left: 34.5.w, right: 33.5.w),
                child: Text(
                  "Create a free account",
                    style: TextStyle(
                    fontFamily: "Nunito",
                    height: 1.h,
                   fontSize: 22.sp,
                    fontWeight: FontWeight.w900,
                    color: AppColors.mainTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
                SizedBox(height: 5.h,),
                   Container(
                height: 45.h,
                width: 308.w,
                padding: const EdgeInsets.all(0),
                 margin: EdgeInsets.only(left: 34.w, right: 33.w),
                child: Text(
                  "Join Notely for free. Create and share unlimited notes with your friends.",
                    style: TextStyle(
                    fontFamily: "Nunito",
                    height: 1.4.h,
                   fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                   color: AppColors.smallTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 52.h,),
              Container(
                margin: EdgeInsets.only(left: 28.w, right: 28.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                  "   Full name",
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 12.sp,
                      color: Colors.grey.shade800),
                ),
                SizedBox(height: 8.h,),
                Container(
                   height: 59.h,
                    width: 318.w,
                    decoration: BoxDecoration(
                      color: AppColors.planBoxColor,
                      borderRadius: BorderRadius.circular(12)
                    ),
                  child:  const TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Salman Khan'),
                       style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 12,
                      color: AppColors.hintColor),
                ),
                ),
                 SizedBox(height: 12.h,),
                  Text(
                  "   Email Address",
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 12.sp,
                      color: Colors.grey.shade800),
                ),
                SizedBox(height: 8.h,),
                Container(
                   height: 59.h,
                    width: 318.w,
                    decoration: BoxDecoration(
                      color: AppColors.planBoxColor,
                      borderRadius: BorderRadius.circular(12)
                    ),
                  child: TextField(
                  obscureText: false,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'symbiotiktech@gmail.com'),
                       style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 12.sp,
                      color: AppColors.hintColor),
                ),
                ),
                  SizedBox(height: 8.h,),
                 Text(
                  "   Password",
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 12.sp,
                      color: Colors.grey.shade800),
                ),
                SizedBox(height: 8.h,),
                Container(
                   height: 59.h,
                    width: 318.w,
                    decoration: BoxDecoration(
                      color: AppColors.planBoxColor,
                      borderRadius: BorderRadius.circular(12)
                    ),
                  child: TextField(
                  obscureText: false,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: '##########'),
                       style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 12.sp,
                      color: AppColors.hintColor),
                ),
                ),
                  ]
                ),
              ),
              SizedBox(height: 100.h,),
               GestureDetector(
                 onTap: () {
                   //Navigator.pushNamed(context, 'subscribe');
                    Navigator.push(
                   context,
                       PageTransition(
                        type: PageTransitionType.rightToLeft,
                           child: const Subscribe(),
                             inheritTheme: true,
                                  ctx: context),
                                     );
                 },
                 child: Button(text: "Create Account", fontSize: 18.sp)),
                SizedBox(height: 20.h,),
                 Container(
                height: 21.h,
              //  width: 209.w,
                 //margin: EdgeInsets.only(left: 34.5.w, right: 33.5.w),
                child: Center(
                  child: Text(
                    "Already have an account?",
                      style: TextStyle(
                      fontFamily: "Nunito",
                     fontSize: 14.sp,
                      fontWeight: FontWeight.w800,
                      color: AppColors.buttonBackgroundColor
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ]
          )
        ),
      ),
    );
  }
}