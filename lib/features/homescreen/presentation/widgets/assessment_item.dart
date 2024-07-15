import 'package:flutter/material.dart';
import 'package:ufs_mechine_test/core/utils/app_text.dart';
import 'package:ufs_mechine_test/core/utils/app_text_form_field.dart';

class AssessmentItem extends StatefulWidget {
  final TextEditingController controller;
  final String title;
  const AssessmentItem({super.key, required this.controller, required this.title});

  @override
  State<AssessmentItem> createState() => _AssessmentItemState();
}

class _AssessmentItemState extends State<AssessmentItem> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 100,
      width: width*.45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(txt: widget.title, textStyle: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(
            height: 5,
          ),
          AppTextFormField(controller: widget.controller, hintText: '')
        ],
      ),
    );
  }
}
