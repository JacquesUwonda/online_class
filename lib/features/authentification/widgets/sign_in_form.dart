import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_class/core/utils/constant/app_colors.dart';
import 'package:online_class/core/utils/constant/app_string.dart';
import 'package:online_class/features/authentification/logic/bloc/sign_in_bloc/sign_in_bloc.dart';
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
  return BlocBuilder<SignInBloc, SignInState>(
    builder: (context, state) {
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
                function: (String value) {
                  context.read<SignInBloc>().add(
                        EmailEvent(value),
                      );
                },
              ),
              SizedBox(
                height: 20.h,
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
                        context.read<ShowpasswordCubit>().showPassword(
                            showPassword: !state.isPasswordVisible);
                      },
                      child: Icon(
                        state.isPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: AppColors.primaryElementColor,
                      ),
                    ),
                    hintText: AppString.passwordHintText,
                    function: (String value) {
                      context.read<SignInBloc>().add(
                            PasswordEvent(value),
                          );
                    },
                  );
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: forgotPassword(),
              ),
              reusableButton(
                375,
                50,
                50,
                0,
                0,
                20,
                AppColors.primaryElementColor,
                Colors.transparent,
                AppString.signInText,
                AppColors.primaryBackgroundColor,
                20,
              ),
              reusableButton(
                375,
                50,
                20,
                0,
                0,
                20,
                AppColors.primaryBackgroundColor,
                AppColors.primaryElementColor,
                AppString.signUpText,
                AppColors.primaryElementColor,
                20,
              ),
            ],
          ),
        ),
      );
    },
  );
}
