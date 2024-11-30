import 'package:flutter/material.dart';
import 'package:welcome_tours/core/ui_kit/styles/app_text_style.dart';
import 'package:welcome_tours/core/ui_kit/styles/app_theme.dart';

class CategoryTab extends StatelessWidget {
  final String text;
  final bool isActive;
  const CategoryTab({super.key, required this.text, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: isActive ? AppTheme.colorPrimary : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: isActive ? Colors.transparent : AppTheme.white,
          width: 1,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: isActive ? AppTextStyle.s11w600ButtonTextInter : AppTextStyle.s11w600WhiteInter,
      ),
    );
  }
}
