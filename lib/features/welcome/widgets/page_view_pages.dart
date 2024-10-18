import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/constant/app_colors.dart';

Widget pages(int index, String title, String subtitle, String imagePath,
    BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
    child: Column(
      children: [
        SizedBox(
          width: 330.w,
          height: 310.h,
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyle(
              height: 1.1,
              fontWeight: FontWeight.normal,
              fontSize: 27.sp,
              color: AppColors.primaryTextColor),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          textAlign: TextAlign.center,
          subtitle,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 17.sp,
            color: AppColors.thirdElementColor,
          ),
        ),
      ],
    ),
  );
}
