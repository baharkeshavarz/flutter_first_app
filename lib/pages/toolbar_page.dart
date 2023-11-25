import 'package:flutter/material.dart';
import 'package:flutter_first_app/styles/app_colors.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const Toolbar({ Key? key, required this.title, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return AppBar(
                title: Text(title,
                             style: const TextStyle(color: AppColors.white,
                             ),
                            ),
                centerTitle: false,
                backgroundColor: AppColors.background,
                elevation: 0,
                actions: actions,
      );
  }

  
 @override
 Size get preferredSize => const Size.fromHeight(64);
}