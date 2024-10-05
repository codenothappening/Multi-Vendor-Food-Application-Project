import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/common/app_style.dart';
import 'package:foodly_flutter/common/reusable_text_widget.dart';
import 'package:foodly_flutter/constants/constants.dart';

class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget({
    super.key,
    required this.image,
    required this.logo,
    required this.rating,
    required this.time,
    this.onTap,
    required this.title,
  });

  final String image;
  final String logo;
  final String title;
  final String time;
  final String rating;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Container(
            width: width * .75,
            height: 192.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: kLightWhite,
            ),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Stack(
                    children: [
                      ClipRRect(
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
                      Positioned(
                        right: 10.w,
                        top: 10.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.r),
                          child: Container(
                            color: kLightWhite,
                            child: Padding(
                              padding: EdgeInsets.all(2.h),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.r),
                                child: Image.network(
                                  logo,
                                  fit: BoxFit.cover,
                                  height: 20.h,
                                  width: 20.w,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableTextWidget(
                        text: title,
                        style: appStyle(12, kDark, FontWeight.w500),
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
                      Row(
                        children: [
                          RatingBarIndicator(
                            rating: 5,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: kPrimary,
                            ),
                            itemCount: 5,
                            itemSize: 15.h,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          ReusableTextWidget(
                            text: "$rating reviews and ratings",
                            style: appStyle(9, kGray, FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
