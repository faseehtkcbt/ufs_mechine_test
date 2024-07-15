import 'package:flutter/material.dart';

import '../../../../core/color_pellete/app_pellette.dart';
import '../../../../core/utils/app_text.dart';

class BottomBarItem extends StatefulWidget {
  final String btnText;
  final int flex;
  final Color bgColor;
  void Function() onTap;
   BottomBarItem({super.key, required this.btnText, required this.flex, required this.bgColor,required this.onTap});

  @override
  State<BottomBarItem> createState() => _BottomBarItemState();
}

class _BottomBarItemState extends State<BottomBarItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(flex: widget.flex,child: Container(
      color: widget.bgColor,
      child: Center(
        child: AppText(
          txt: widget.btnText,
          textStyle: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    ));
  }
}
