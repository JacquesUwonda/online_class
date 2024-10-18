import 'package:flutter/material.dart';
import 'package:online_class/core/utils/constant/app_colors.dart';

List<BoxShadow> shadow() {
  return const [
    BoxShadow(
      color: AppColors.fourthElementColor,
      spreadRadius: 1,
      blurRadius: 2,
      offset: Offset(0, 2),
    ),
  ];
}
