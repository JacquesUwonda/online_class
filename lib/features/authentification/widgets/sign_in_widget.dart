import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      "Login",
      style: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontSize: 20.sp,
          fontWeight: FontWeight.normal),
    ),
    centerTitle: true,
  );
}

Widget thirdPartSignIn(void tapFunction, String logo) {
  return SizedBox(
    width: 40.w,
    height: 40.h,
    child: GestureDetector(
      onTap: () {
        tapFunction;
      },
      child: Image.asset(logo),
    ),
  );
}
