import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/common/app_style.dart';
import 'package:foodly_flutter/common/reusable_text_widget.dart';
import 'package:foodly_flutter/constants/constants.dart';
import 'package:foodly_flutter/constants/uidata.dart';
import 'package:foodly_flutter/views/home/widgets/category_widget.dart';

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
      body: Container(
        padding: EdgeInsets.only(left: 12.w, top: 10.h),
        height: height,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: List.generate(categories.length, (i) {
            var category = categories[i];
            return ListTile(
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
                    style: appStyle(12, kGray, FontWeight.w600)));
          }),
        ),
      ),
    );
  }
}
