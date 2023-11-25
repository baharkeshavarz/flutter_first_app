import 'package:flutter/material.dart';
import 'package:flutter_first_app/styles/app_colors.dart';

class AppTextField extends StatelessWidget {
final String hint;
const AppTextField({ Key? key, required this.hint }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return TextField(
              decoration: InputDecoration(
                  hintText: hint,
                  labelText: hint,
                  border: const UnderlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(12)),
                     borderSide: BorderSide(color: Colors.transparent),
                  ),
                  filled: true,
                  fillColor: AppColors.fieldColor,
                ),
            );
  }
}