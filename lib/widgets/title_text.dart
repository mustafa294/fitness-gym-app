import 'package:fitness_gym_app/utils/constants.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;

  const TitleText({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          color: AppColor.redAccentColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
