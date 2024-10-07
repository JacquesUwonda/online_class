import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_class/core/utils/constant/app_images_url.dart';
import 'package:online_class/features/authentification/widgets/sign_in_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: signInAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  thirdPartSignIn(
                    (),
                    AppImageUrl.googleLogo,
                  ),
                  thirdPartSignIn(
                    (),
                    AppImageUrl.appleLogo,
                  ),
                  thirdPartSignIn(
                    (),
                    AppImageUrl.facebookLogo,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
