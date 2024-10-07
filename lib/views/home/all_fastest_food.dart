import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/common/app_style.dart';
import 'package:foodly_flutter/constants/constants.dart';
import 'package:foodly_flutter/constants/uidata.dart';
import 'package:foodly_flutter/views/home/widgets/food_tile.dart';
import 'package:foodly_flutter/views/home/widgets/restaurant_tile.dart';

import '../../common/background_container.dart';

class AllFastestFood extends StatelessWidget {
  const AllFastestFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kSecondary,
          elevation: 0,
          title: Text(
            "Fastest Foods",
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
              children: List.generate(foods.length, (i) {
                var food = foods[i];
                return FoodTile(
                  food: food,
                );
              }),
            ),
          ),
        ));
  }
}
