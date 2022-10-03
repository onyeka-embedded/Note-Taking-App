import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_taking_app/widgets/plan_container.dart';

import '../utils/colors.dart';
import '../widgets/button.dart';

class Subscribe extends StatefulWidget {
  const Subscribe({Key? key}) : super(key: key);

  @override
  State<Subscribe> createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  int selectColor = 1;
  int width = 1;
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
                  margin: EdgeInsets.only(top: 16.h, right: 23.w, left: 132.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notely Premium",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w900,
                            color: AppColors.mainTextColor),
                      ),
                      const Icon(Icons.close, )
                    ],
                  )),
              SizedBox(
                height: 28.5.h,
              ),
              Container(
                height: 120.h,
                width: 162.w,
                margin: EdgeInsets.only(left: 107.w, right: 106.w),
                child: Image.asset(
                  "assets/images/2.png",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 17.h,),
              Container(
                height: 66.h,
                width: 277.w,
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.only(left: 53.w, right: 50.w),
                child: Text(
                  "Start Using Notely with Premium Benefits",
                  style: TextStyle(
                    fontFamily: "Nunito",
                    height: 1.4.h,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w900,
                    color: AppColors.mainTextColor,
                    // height: 1
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              Container(
                  padding: const EdgeInsets.all(0),
                  margin: EdgeInsets.only(left: 30.w, right: 27.w),
                  child: Column(
                    children: [
                      Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.check, color: AppColors.smallTextColor,),
                          SizedBox(
                            width: 12.w,
                          ),
                          Text(
                            "Save unlimited notes to a single project",
                            style: CustomStyle(),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.check, color: AppColors.smallTextColor,),
                          SizedBox(
                            width: 12.w,
                          ),
                          Text(
                            "Create unlimited projects and teams",
                            style: CustomStyle(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.check, color: AppColors.smallTextColor,),
                          SizedBox(
                            width: 12.w,
                          ),
                          Text(
                            "Daily backups to keep your data safe",
                            style: CustomStyle(),
                          ),
                        ],
                      )
                    ],
                  )),
              SizedBox( height: 36.h,),
              Container(
                margin: EdgeInsets.only(left: 32.w, right: 32.w),
                height: 147.h,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                    setState(() {
                      selectColor = 1;
                      width = 1;
                    });
                    print("Box1");
                      },
                      child: PlanContainer(
                        color: selectColor == 1 ? AppColors.activeBorderColor : AppColors.borderColor, 
                        width: width == 1 ? 5 : 2, 
                        text1: 'Annual', 
                        text2: '\$79.99', 
                        text3: 'Per year',)),
                    SizedBox(width: 17.h,),
                   GestureDetector(
                     onTap:(){
                       setState(() {
                      selectColor = 2;
                      width = 2;
                    });
                        print("Box2");
                     },
                     child: PlanContainer(
                        color: selectColor == 1 ? AppColors.borderColor : AppColors.activeBorderColor, 
                        width: width == 2 ? 5 : 2, 
                       text1: 'Monthly', 
                       text2: '\$7.99', 
                       text3: 'Per month', 
                     )
                   )
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
               Button(
                text: "SUBSCRIBE",
                fontSize: 18.sp
              ),
              SizedBox(height: 20.h,),
              Container(
                height: 20.h,
                //  width: 209.w,
                //margin: EdgeInsets.only(left: 34.5.w, right: 33.5.w),
                child: Center(
                  child: Text(
                    "Restore Purchase",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        color: AppColors.buttonBackgroundColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle CustomStyle() {
    return TextStyle(
      fontFamily: "Nunito",
      // height:1.6.h,
      fontSize: 12.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.smallTextColor,
    );
  }
}
