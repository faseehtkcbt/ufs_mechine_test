import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ufs_mechine_test/core/color_pellete/app_pellette.dart';
import 'package:ufs_mechine_test/core/constants/constants.dart';
import 'package:ufs_mechine_test/core/utils/app_text.dart';
import 'package:ufs_mechine_test/core/utils/app_text_form_field.dart';
import 'package:ufs_mechine_test/features/homescreen/bloc/selection_cubit.dart';
import 'package:ufs_mechine_test/features/homescreen/presentation/widgets/assessment_container.dart';
import 'package:ufs_mechine_test/features/homescreen/presentation/widgets/assessment_tab.dart';
import 'package:ufs_mechine_test/features/homescreen/presentation/widgets/bottom_bar_item.dart';

class DataAccesment extends StatefulWidget {
  const DataAccesment({super.key});

  @override
  State<DataAccesment> createState() => _DataAccesmentState();
}

class _DataAccesmentState extends State<DataAccesment> {
  final extraNoteController = TextEditingController();
  final frmKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SelectionCubit>(
      create: (context) => SelectionCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset(Constants.leadingIcon,height: 40,width: 40,),
        ),
          bottomNavigationBar: Container(
            height: 70,
            child: Row(
              children: [
                BottomBarItem(
                  onTap: (){},
                    btnText: 'Skip', flex: 1, bgColor: AppPellette.lightYellow),
                 BottomBarItem(
                   onTap: (){
                     if(frmKey.currentState!.validate()){
                       print('submitted');
                     }
                   },
                    btnText: 'Save', flex: 2, bgColor: AppPellette.orange)
              ],
            ),
          ),
          body: SafeArea(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  AppText(
                      txt: 'Risk Assesment',
                      textStyle: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocConsumer<SelectionCubit, SelectionState>(
                    listener: (context, state) {
                      // TODO: implement listener
                    },
                    builder: (context, state) {
                      return state is SelectionInitial
                          ? ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: Constants.assessments.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        context.read<SelectionCubit>().selectIndex(index);
                                      },
                                      child: AssessmentTab(
                                          tabText: Constants.assessments[index]),
                                    ),
                                    Visibility(
                                        visible: index == state.index,
                                        child: const AssessmentContainer())
                                  ],
                                );
                              })
                          : const SizedBox();
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: AppTextFormField(
                      controller: extraNoteController,
                      hintText: 'Enter Notes',
                      maxLines: 6,
                    ),
                  )
                ],
              ),
            ),
          ))),
    );
  }
}
