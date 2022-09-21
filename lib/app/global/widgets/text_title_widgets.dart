import 'package:disney/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomTextTitleWidget extends StatelessWidget {

  final String title;

  const CustomTextTitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: appThemeData.textTheme.titleLarge!.fontSize,
      ),
    );
  }
}
