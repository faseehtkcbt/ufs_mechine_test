import 'package:flutter/material.dart';
import 'package:ufs_mechine_test/core/constants/constants.dart';
import 'package:ufs_mechine_test/core/utils/app_text.dart';

import 'assessment_item.dart';

class AssessmentContainer extends StatefulWidget {
  const AssessmentContainer({super.key});

  @override
  State<AssessmentContainer> createState() => _AssessmentContainerState();
}

class _AssessmentContainerState extends State<AssessmentContainer> {
  final riskDescription = TextEditingController();
  final initialScore = TextEditingController();
  final go = TextEditingController();
  final mitigationMeasure = TextEditingController();
  final finalScore = TextEditingController();
  final noGo = TextEditingController();
  String? selectedItem = Constants.leadingIcon[0];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      height: 330,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AssessmentItem(
                title: 'Risk Description',
                controller: riskDescription,
              ),
              AssessmentItem(
                title: 'Initial Score',
                controller: initialScore,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AssessmentItem(
                title: 'Go',
                controller: go,
              ),
              AssessmentItem(
                title: 'Mitigation Measure',
                controller: mitigationMeasure,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AssessmentItem(
                title: 'Final Score',
                controller: finalScore,
              ),
              AssessmentItem(
                title: 'No Go',
                controller: noGo,
              ),
            ],
          ),
          DropdownButton(
            value: selectedItem,
              items: Constants.items
                  .map((e) => DropdownMenuItem(
                      child: AppText(
                          txt: e,
                          textStyle: Theme.of(context).textTheme.bodySmall)))
                  .toList(),
              onChanged: (value){
                selectedItem = value;
              })
        ],
      ),
    );
  }
}
