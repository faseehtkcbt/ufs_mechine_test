import 'package:flutter/material.dart';

class AppTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
const AppTextFormField({super.key, required this.controller, required this.hintText,this.maxLines = 1});

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:widget.controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: widget.hintText
      ),
      validator:(value){
        if(value == null){
          return 'Please enter a string';
        }
        return null;
      },
      maxLines: widget.maxLines,
    );
  }
}
