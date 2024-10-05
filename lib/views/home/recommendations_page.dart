import 'package:flutter/material.dart';

class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        title: const Text("All Recommended Restaurants"),
      ),
      body: const Center(
        child: Text("All Restaurant"),
      ),
    );
  }
}
