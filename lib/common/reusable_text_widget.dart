import 'package:flutter/material.dart';

class ReusableTextWidget extends StatelessWidget {
  const ReusableTextWidget(
      {super.key, required this.text, required this.style});

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      maxLines: 1,
      softWrap: false,
      textAlign: TextAlign.left,
    );
  }
}
