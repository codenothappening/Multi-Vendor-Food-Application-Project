import 'package:flutter/material.dart';
import 'package:foodly_flutter/common/app_style.dart';
import 'package:foodly_flutter/constants/constants.dart';

class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: Text(
          "Recommended Restaurants",
          style: appStyle(13, kGray, FontWeight.w600),
        ),
      ),
      body: const Center(
        child: Text("All Recommended"),
      ),
    );
  }
}
