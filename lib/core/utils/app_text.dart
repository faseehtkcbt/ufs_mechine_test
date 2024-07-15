import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String txt;
  final TextStyle? textStyle;
  AppText({super.key, required this.txt, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: textStyle,
    );
  }
}
