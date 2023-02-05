import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils.dart/custom_colors.dart';
import 'costum_text_widget.dart';

class CustomHomeButton extends StatelessWidget {
  const CustomHomeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 139.h,
      width: 332.w,
      padding: EdgeInsets.only(top: 16.h, left: 16.w),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.150),
        // gradient: CustomColors.mainColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(children: [
        CustomTextWidget(
          title: "Welcome to TickTick Task",
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        Positioned(
          top: 25,
          right: 0,
          left: 0,
          child: CustomTextWidget(
              fontWeight: FontWeight.w400,
              textColor: CustomColors.secundTextColor,
              fontSize: 13,
              title:
                  "Your one-stop app for task management. Simplify, track, and accomplish tasks with ease."),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: Container(
            width: 109.w,
            height: 31.h,
            decoration: BoxDecoration(
                color: CustomColors.greenColor,
                border: Border.all(width: 1, color: CustomColors.white),
                borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              Icon(
                Icons.play_arrow,
                color: CustomColors.white,
              ),
              CustomTextWidget(title: "Watch Video")
            ]),
          ),
        ),
        Positioned(
          bottom: -7,
          right: -1,
          child: Container(
            width: 75.w,
            height: 75.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/icons/banner.png"))),
          ),
        )
      ]),
    );
  }
}
