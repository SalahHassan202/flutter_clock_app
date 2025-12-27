import 'package:flutter/material.dart';
import 'package:flutter_clock_app/core/colors/app_colors.dart';
import 'package:flutter_clock_app/core/constants/app_constants.dart';
import 'package:flutter_clock_app/core/styles/app_styles.dart';
import 'package:flutter_clock_app/features/widgets/clock_page_body.dart';
import 'package:flutter_clock_app/features/widgets/custom_container.dart';
import 'package:flutter_clock_app/features/widgets/row_widget.dart';

class ClockPage extends StatefulWidget {
  const ClockPage({super.key});

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  String selectedClockType = 'Analog';
  Color selectedColor = Colors.black;
  double selectedSize = 300;

  void updateClockType(String type) {
    setState(() => selectedClockType = type);
  }

  void updateColor(Color color) {
    setState(() => selectedColor = color);
  }

  void updateSize(double size) {
    setState(() => selectedSize = size);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clock App")),
      drawer: Drawer(
        child: Column(
          children: [
            CustomContainer(),
            RowWidget(iconData: Icons.access_alarm, title: "Clock Type"),
            buildRadioTile("Analog", "Analog Clock"),
            buildRadioTile("Digital", "Digital Clock"),
            buildRadioTile("Text", "Text Clock"),
            Divider(height: 20, thickness: 0.5),
            RowWidget(
              iconData: Icons.format_size_outlined,
              title: "CLock SIze",
            ),
            Slider(
              value: selectedSize,
              min: 100,
              max: 400,
              divisions: 7,
              activeColor: AppColors.blueColor,
              onChanged: updateSize,
            ),
            Divider(height: 20, thickness: 0.5),
            RowWidget(iconData: Icons.color_lens, title: "Clock Color"),

            SizedBox(
              height: 40,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemCount: AppConstants.colors.length,
                itemBuilder: (context, index) {
                  final color = AppConstants.colors[index];
                  return GestureDetector(
                    onTap: () => updateColor(color),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: selectedColor == color
                              ? Colors.black
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: ClockPageBody(
        clockType: selectedClockType,
        clockColor: selectedColor,
        clockSize: selectedSize,
      ),
    );
  }

  Widget buildRadioTile(String value, String lable) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: selectedClockType,
          activeColor: AppColors.blueColor,
          onChanged: (val) => updateClockType(val!),
        ),
        Text(
          lable,
          style: AppStyles.textStyle14.copyWith(color: AppColors.blackColor),
        ),
      ],
    );
  }
}
