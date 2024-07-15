import 'package:flutter/material.dart';

import '../../../../core/color_pellete/app_pellette.dart';
import '../../../../core/utils/app_text.dart';

class AssessmentTab extends StatefulWidget {
  final String tabText;
  final Color color;
  const AssessmentTab({super.key, required this.tabText, required this.color});

  @override
  State<AssessmentTab> createState() => _AssessmentTabState();
}

class _AssessmentTabState extends State<AssessmentTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      height: 50,
      decoration: BoxDecoration(
          color: widget.color,borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(txt: widget.tabText, textStyle: Theme.of(context).textTheme.bodyLarge),
         const Icon(Icons.arrow_right)
        ],
      ),
    );
  }
}
