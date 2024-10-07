import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/common/app_style.dart';
import 'package:foodly_flutter/common/background_container.dart';
import 'package:foodly_flutter/constants/constants.dart';
import 'package:foodly_flutter/views/home/widgets/restaurant_tile.dart';

import '../../constants/uidata.dart';
import 'widgets/food_widget.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kSecondary,
          elevation: 0,
          title: Text(
            "Nearby Restaurants",
            style: appStyle(13, kLightWhite, FontWeight.w600),
          ),
        ),
        body: BackgroundContainer(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              12.w,
              12.h,
              12.w,
              12.h,
            ),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: List.generate(restaurants.length, (i) {
                var restaurant = restaurants[i];
                return RestaurantTile(
                  restaurant: restaurant,
                );
              }),
            ),
          ),
        ));
  }
}
