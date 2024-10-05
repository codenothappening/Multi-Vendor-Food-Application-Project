import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/common/app_style.dart';
import 'package:foodly_flutter/common/reusable_text_widget.dart';
import 'package:foodly_flutter/constants/constants.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget(
      {super.key,
      required this.image,
      required this.price,
      required this.time,
      required this.title,
      this.onTap});
  final String image;
  final String title;
  final String time;
  final String price;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Container(
            width: width * .75,
            height: 180.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: kLightWhite,
            ),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: SizedBox(
                      height: 112.h,
                      width: width * 0.8,
                      child: Image.network(
                        image,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableTextWidget(
                            text: title,
                            style: appStyle(12, kDark, FontWeight.w500),
                          ),
                          ReusableTextWidget(
                            text: "\$$price",
                            style: appStyle(12, kPrimary, FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableTextWidget(
                            text: "Delivery Time",
                            style: appStyle(9, kGray, FontWeight.w500),
                          ),
                          ReusableTextWidget(
                            text: time,
                            style: appStyle(9, kDark, FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
