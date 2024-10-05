import 'package:flutter/material.dart';

class AllFastestFood extends StatelessWidget {
  const AllFastestFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        title: const Text("All fastest food"),
      ),
      body: const Center(
        child: Text("All Nearby food"),
      ),
    );
  }
}
