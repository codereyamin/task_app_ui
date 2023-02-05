import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app_ui/utils.dart/custom_colors.dart';
import 'package:task_app_ui/widgets/costum_text_widget.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.w,
      height: 64.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomTextWidget(
                        title: "Hi, Habib 👋",
                        fontSize: 18,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextWidget(
                    title: "Let’s explore your notes",
                    textColor: CustomColors.secundTextColor,
                  )
                ],
              ),
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border:
                        Border.all(color: CustomColors.greenColor, width: 2),
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage("images/download.png"))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
