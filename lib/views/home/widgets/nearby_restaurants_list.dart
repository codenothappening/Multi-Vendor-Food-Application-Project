import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/constants/constants.dart';
import 'package:foodly_flutter/constants/uidata.dart';
import 'package:foodly_flutter/views/home/widgets/category_widget.dart';
import 'package:foodly_flutter/views/home/widgets/restaurant_widget.dart';
import 'package:get/get.dart';

class NearbyRestaurantsList extends StatelessWidget {
  const NearbyRestaurantsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (i) {
          var restaurant = restaurants[i];
          return RestaurantWidget(
            image: restaurant['imageUrl'],
            logo: restaurant['logoUrl'],
            rating: restaurant['ratingCount'],
            time: restaurant['time'],
            title: restaurant['title'],
          );
        }),
      ),
    );
  }
}
