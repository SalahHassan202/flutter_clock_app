import 'package:flutter/material.dart';
import 'package:flutter_clock_app/core/colors/app_colors.dart';
import 'package:flutter_clock_app/core/styles/app_styles.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.only(left: 30),
      color: AppColors.blueColor,
      child: Row(
        children: [
          const Icon(
            Icons.access_time_filled_outlined,
            color: AppColors.whiteColor,
          ),
          SizedBox(width: 20),
          Text(
            'Settings',
            style: AppStyles.textStyleBold.copyWith(
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
