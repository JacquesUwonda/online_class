import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_class/core/utils/constant/app_images_url.dart';
import 'package:online_class/core/utils/constant/app_string.dart';

AppBar signInAppBar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(0.5),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        height: 0.5,
      ),
    ),
    title: Text(
      AppString.signInText,
      style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontSize: 20.sp,
          fontWeight: FontWeight.normal),
    ),
    centerTitle: true,
  );
}

Widget thirdPartSignIn() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      GestureDetector(
        onTap: () {},
        child: Image.asset(
          AppImageUrl.googleLogo,
          width: 45.w,
          height: 45.h,
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: Image.asset(
          AppImageUrl.appleLogo,
          width: 45.w,
          height: 45.h,
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: Image.asset(
          AppImageUrl.facebookLogo,
          width: 45.w,
          height: 45.h,
        ),
      ),
    ],
  );
}

Widget reusableText(String text, int size) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.black.withOpacity(0.5),
      fontSize: size.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}
