import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/common/app_style.dart';
import 'package:foodly_flutter/common/background_container.dart';
import 'package:foodly_flutter/common/reusable_text_widget.dart';
import 'package:foodly_flutter/constants/constants.dart';
import 'package:foodly_flutter/constants/uidata.dart';
import 'package:foodly_flutter/views/categories/category_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: ReusableTextWidget(
          text: "All Categories",
          style: appStyle(20, kGray, FontWeight.w600),
        ),
      ),
      body: BackgroundContainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 12.w, top: 10.h),
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(categories.length, (i) {
              var category = categories[i];
              return ListTile(
                onTap: () => {
                  Get.to(
                    () => const CategoryPage(),
                    transition: Transition.fadeIn,
                    duration: const Duration(microseconds: 900),
                  ),
                },
                leading: CircleAvatar(
                  radius: 18.r,
                  backgroundColor: kGrayLight,
                  child: Image.network(
                    category["imageUrl"],
                    fit: BoxFit.contain,
                  ),
                ),
                title: ReusableTextWidget(
                    text: category['title'],
                    style: appStyle(14, kGray, FontWeight.w600)),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: kGray,
                  size: 15.r,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
