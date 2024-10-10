import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_class/core/utils/constant/app_string.dart';
import 'package:online_class/features/authentification/widgets/sign_in_form.dart';
import 'package:online_class/features/authentification/widgets/sign_in_widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: signInAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              thirdPartSignIn(),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: reusableText(AppString.useEmail, 14),
              ),
              signInForm(),
            ],
          ),
        ),
      ),
    );
  }
}
