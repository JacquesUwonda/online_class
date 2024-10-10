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
      AppString.authentificationText,
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

Widget forgotPassword() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      alignment: Alignment.bottomRight,
      child: Text(
        AppString.forgotPassword,
        style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            decoration: TextDecoration.underline,
            height: 0.5,
            decorationColor: Colors.blue),
      ),
    ),
  );
}

Widget reusableButton(
    double width,
    double height,
    double martop,
    double marleft,
    double marright,
    double radius,
    Color bacColor,
    Color borderColor,
    String btnText,
    Color? btnTextColor,
    double btnTextSize) {
  return Container(
    width: width.w,
    height: height.h,
    margin: EdgeInsets.only(top: martop.h, left: marleft.w, right: marright.w),
    decoration: BoxDecoration(
      color: bacColor,
      borderRadius: BorderRadius.all(
        Radius.circular(radius.w),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 2,
          offset: const Offset(0, 2),
        ),
      ],
      border: Border.all(color: borderColor),
    ),
    child: Center(
      child: Text(
        btnText,
        style: TextStyle(
          color: btnTextColor,
          fontSize: btnTextSize.sp,
        ),
      ),
    ),
  );
}
