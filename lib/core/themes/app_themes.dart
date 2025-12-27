import 'package:flutter/material.dart';
import 'package:flutter_clock_app/core/colors/app_colors.dart';
import 'package:flutter_clock_app/core/styles/app_styles.dart';

class AppThemes {
  static final ThemeData myTheme = ThemeData(
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: AppColors.whiteColor),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppStyles.textStyleBold.copyWith(
        color: AppColors.whiteColor,
      ),
      backgroundColor: AppColors.blueColor,
    ),
    drawerTheme: DrawerThemeData(backgroundColor: AppColors.whiteColor),
  );
}
