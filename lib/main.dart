import 'package:flutter/material.dart';
import 'package:flutter_clock_app/core/themes/app_themes.dart';
import 'package:flutter_clock_app/features/pages/clock_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemes.myTheme,
      debugShowCheckedModeBanner: false,
      home: const ClockPage(),
    );
  }
}
