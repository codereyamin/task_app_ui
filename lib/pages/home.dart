import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:task_app_ui/utils.dart/custom_colors.dart';
import 'package:task_app_ui/widgets/costum_text_widget.dart';

import '../data_use_ui/color_list.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_home_button.dart';

class HoomePage extends StatefulWidget {
  const HoomePage({super.key});

  @override
  State<HoomePage> createState() => _HoomePageState();
}

class _HoomePageState extends State<HoomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffoldBackgrundColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.maxFinite,
                height: 450.h,
              ),
              Container(
                  width: double.infinity,
                  height: 350.h,
                  decoration: BoxDecoration(
                      gradient: CustomColors.mainColor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: SafeArea(
                      child: Container(
                    alignment: Alignment.center,
                    height: 120,
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
                    child: Column(
                      children: [
                        const CustomAppbar(),
                        SizedBox(
                          height: 8.h,
                        ),
                        const CustomHomeButton()
                      ],
                    ),
                  ))),
              Positioned(
                  left: 20.w,
                  right: 20.w,
                  top: 290.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextWidget(
                        title: "Reminder Task",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomTextWidget(
                        title: "See all",
                        fontWeight: FontWeight.w400,
                        textColor: CustomColors.secundTextColor,
                      ),
                    ],
                  )),
              Positioned(
                  top: 310.h,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 120.h,
                    width: double.maxFinite,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: customColorList.length,
                      itemBuilder: (context, index) => index != 0
                          ? Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 10.w),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 10.w),
                              width: 150.w,
                              height: 100.h,
                              decoration: BoxDecoration(
                                  color: CustomColors.white,
                                  borderRadius: BorderRadius.circular(10.w),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: const Offset(
                                          5, 8), // changes position of shadow
                                    ),
                                  ]),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 5.w),
                                      color: customColorList[index],
                                      height: 36.h,
                                      width: 36.w,
                                      child: const ImageIcon(
                                        color: Colors.white,
                                        AssetImage(
                                          "images/todoicons/to-do-list1.png",
                                        ),
                                      ),
                                    ),
                                    CustomTextWidget(
                                      title: "Online Class Routine ",
                                      textColor: Colors.black,
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    CustomTextWidget(
                                      title: "Save Date: 10/12/2022",
                                      textColor: Colors.black.withOpacity(0.5),
                                      fontSize: 10,
                                    ),
                                  ]),
                            )
                          : SizedBox(
                              width: 10.w,
                              height: 91.h,
                            ),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      title: "All Task",
                      fontSize: 14,
                      textColor: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomTextWidget(
                      title: "See All",
                      fontWeight: FontWeight.w400,
                      textColor: CustomColors.secundTextColor,
                    ),
                  ],
                ),
                SizedBox(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 50,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 0),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.w, horizontal: 15.w),
                        decoration: BoxDecoration(
                            color: CustomColors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5.w),
                            color: Colors.amberAccent,
                            height: 36.w,
                            width: 36.w,
                            child: const ImageIcon(
                              color: Colors.white,
                              AssetImage(
                                "images/todoicons/to-do-list1.png",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextWidget(
                                title: "Online Class Routine $index",
                                textColor: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 5.w,
                              ),
                              CustomTextWidget(
                                title: "Save Date: 10/12/2022",
                                textColor: Colors.black.withOpacity(0.5),
                                fontSize: 10,
                              ),
                            ],
                          )
                        ]),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
