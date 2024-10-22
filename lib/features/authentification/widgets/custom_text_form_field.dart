import 'package:flutter/material.dart';
import 'package:online_class/core/utils/constant/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.function,
    required this.controller,
    required this.validator,
    required this.keyboardType,
    required this.obscureText,
    required this.suffix,
    required this.prefix,
    required this.hintText,
  });

  final Function(String value)? function;
  final TextEditingController controller;
  final String? Function(String? val) validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final String hintText;
  final Widget? suffix;
  final Widget? prefix;
  final EdgeInsetsGeometry? contentPadding = const EdgeInsetsDirectional.only(
    top: 2,
    bottom: 2,
    end: 10,
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: function,
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      style: Theme.of(context).textTheme.titleSmall,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffix: suffix,
        prefixIcon: prefix,
        hintText: hintText,
        contentPadding: contentPadding,
        hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: AppColors.secondaryElementColor),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
              color: AppColors.secondaryElementColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: AppColors.secondaryElementColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: AppColors.primaryElementColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.errorColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.errorColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        errorStyle: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: AppColors.errorColor, fontSize: 12),
      ),
      validator: validator,
    );
  }
}
