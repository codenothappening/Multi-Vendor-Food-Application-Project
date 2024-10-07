import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/common/app_style.dart';
import 'package:foodly_flutter/common/background_container.dart';
import 'package:foodly_flutter/constants/constants.dart';
import 'package:foodly_flutter/constants/uidata.dart';
import 'package:foodly_flutter/views/home/widgets/food_tile.dart';

class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSecondary,
        appBar: AppBar(
          backgroundColor: kSecondary,
          elevation: 0,
          title: Text(
            "Recommendations",
            style: appStyle(13, kLightWhite, FontWeight.w600),
          ),
        ),
        body: BackgroundContainer(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(
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
