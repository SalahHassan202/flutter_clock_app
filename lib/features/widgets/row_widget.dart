import 'package:flutter/material.dart';
import 'package:flutter_clock_app/core/colors/app_colors.dart';
import 'package:flutter_clock_app/core/styles/app_styles.dart';

class RowWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  const RowWidget({super.key, required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, color: AppColors.greyColor),
        SizedBox(width: 20),
        Text(
          title,
          style: AppStyles.textStyleBold.copyWith(
            color: AppColors.blackColor,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
