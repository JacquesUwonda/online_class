import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_class/core/utils/constant/app_string.dart';
import 'package:online_class/features/authentification/widgets/custom_text_form_field.dart';
import 'package:online_class/features/authentification/widgets/sign_in_widgets.dart';

import '../../../core/utils/validators/validations_rules.dart';
import '../logic/cubit/showpassword/showpassword_cubit.dart';

final _loginFormKey = GlobalKey<FormState>();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

void dispose() {
  _emailController.dispose();
  _passwordController.dispose();
}

Widget signInForm() {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: 30.h,
      horizontal: 20.w,
    ),
    child: Form(
      key: _loginFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          reusableText(AppString.emailText, 17),
          SizedBox(
            height: 5.h,
          ),
          CustomTextFormField(
            controller: _emailController,
            validator: (val) {
              if (val!.isEmpty) {
                return AppString.emailRequired;
              } else if (!ValidationRules.emailValidation.hasMatch(val)) {
                return AppString.invalidEmail;
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            prefix: const Icon(Icons.email_outlined),
            suffix: null,
            hintText: AppString.emailHintText,
          ),
          const SizedBox(
            height: 20,
          ),
          reusableText(AppString.passwordText, 17),
          SizedBox(
            height: 5.h,
          ),
          BlocBuilder<ShowpasswordCubit, ShowpasswordState>(
            builder: (context, state) {
              return CustomTextFormField(
                controller: _passwordController,
                validator: (val) {
                  if (val!.isEmpty) {
                    return AppString.passwordRequired;
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: state.isPasswordVisible,
                prefix: const Icon(Icons.lock_outline),
                suffix: InkWell(
                  onTap: () {
                    context
                        .read<ShowpasswordCubit>()
                        .showPassword(showPassword: !state.isPasswordVisible);
                  },
                  child: Icon(
                    state.isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey,
                  ),
                ),
                hintText: AppString.passwordHintText,
              );
            },
          ),
          const SizedBox(
            height: 30,
          ),
          // RoundedElevatedButton(
          //   buttonText: "Login",
          //   onPressed: () {
          //     if (_loginFormKey.currentState!.validate()) {}
          //   },
          // ),
          // const SizedBox(
          //   height: 15,
          // ),
          // GestureDetector(
          //   onTap: () {
          //   },
          //   child: RichText(
          //     text: const TextSpan(
          //       text: AppString.newUser,
          //       style: TextStyle(color: AppColor.greyColor),
          //       children: [
          //         TextSpan(
          //           text: AppString.register,
          //           style: TextStyle(
          //             color: AppColor.secondColor,
          //             fontWeight: FontWeight.w500,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    ),
  );
}
