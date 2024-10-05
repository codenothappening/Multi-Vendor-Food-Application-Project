import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/common/custom_appbar.dart';
import 'package:foodly_flutter/common/custom_container.dart';
import 'package:foodly_flutter/common/heading.dart';
import 'package:foodly_flutter/constants/constants.dart';
import 'package:foodly_flutter/views/home/all_fastest_food.dart';
import 'package:foodly_flutter/views/home/all_nearby_restaurants.dart';
import 'package:foodly_flutter/views/home/recommendations_page.dart';
import 'package:foodly_flutter/views/home/widgets/category_list.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: const CustomAppbar(),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              const CategoryList(),
              Heading(
                text: "Nearby Restaurants",
                onTap: () {
                  Get.to(
                    () => const AllNearbyRestaurants(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 500),
                  );
                },
              ),
              Heading(
                text: "Try Something New",
                onTap: () {
                  Get.to(
                    () => const RecommendationsPage(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 500),
                  );
                },
              ),
              Heading(
                text: "Food Closer to you",
                onTap: () {
                  Get.to(
                    () => const AllFastestFood(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 500),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
