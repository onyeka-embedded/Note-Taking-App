import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_taking_app/screens/create_account.dart';
import 'package:note_taking_app/utils/colors.dart';
import 'package:note_taking_app/widgets/button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Page_View extends StatelessWidget {
   const Page_View({ Key? key, required this.pageController}) : super(key: key);
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Container(
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
          SizedBox(height: 118.h,),
          Container(
            height: 179.h,
            width: 268.w,
            margin: EdgeInsets.only(left: 54.w, right: 53.w),
            child: Image.asset("assets/images/1.png", fit: BoxFit.fill,),
          ),
          SizedBox(height: 28.h,),
          Container(
            height: 66.h,
            width: 307.w,
            padding: EdgeInsets.all(0),
             margin: EdgeInsets.only(left: 34.5.w, right: 33.5.w),
            child: Text(
              "World’s Safest And Largest Digital Notebook",
                style: TextStyle(
                fontFamily: "Nunito",
                height: 1.3.h,
               fontSize: 22.sp,
                fontWeight: FontWeight.w900,
                color: AppColors.mainTextColor,
               // height: 1
               
              ),
              textAlign: TextAlign.center,
            ),
          ),
           SizedBox(height: 12.h,),
          Container(
            height: 63.h,
            width: 308.w,
             margin: EdgeInsets.only(left: 34.5.w, right: 33.5.w),
            child: Text(
              "Notely is the world’s safest, largest and intelligent digital notebook. Join over 10M+ users already using Notely.",
                style: TextStyle(
                fontFamily: "Nunito",
               fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.smallTextColor,
                height: 1.3.h
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 24.h,),
            Container(
              width: 38.w,
              height: 10.h,
              margin: EdgeInsets.only(left: 169.w, right: 168.w),
              child: SmoothPageIndicator(
                controller: pageController, 
                count: 3,
                effect: ScrollingDotsEffect(
                  dotHeight: 8.h,
                  dotWidth: 8.w,
                  spacing: 6.w,
                  dotColor: AppColors.buttonBackgroundColor.withOpacity(0.5),
                  activeDotColor: const Color(0xFFD9614C)
                ),
                ),
            ),
            
           SizedBox(height: 55.h,),
           GestureDetector(
             onTap: (){
               Navigator.push(
                   context,
                       PageTransition(
                        type: PageTransitionType.rightToLeft,
                           child: const CreateAccount(),
                             inheritTheme: true,
                                  ctx: context),
                );
               //Navigator.pushNamed(context, 'createAccount');
             },
             child: Button(text: "GET STARTED", fontSize: 18.sp,)),
            SizedBox(height: 20.h,),

             Container(
            height: 21.h,
            width: 209.w,
             margin: EdgeInsets.only(left: 34.5.w, right: 33.5.w),
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
        ],
      ),
    );
  }
}