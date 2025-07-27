import 'package:chat_application/common/colors/app_colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldBaseWidget extends StatelessWidget {
  const TextFormFieldBaseWidget({
    super.key,
    required this.controller,
    this.keyboardType,
    required this.hintText,
    required this.validator,
    this.isObscureText = false,
    this.suffixIcon,
    this.prefixIcon,
  });
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String hintText;
  final String? Function(String?) validator;
  final bool isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      obscureText: isObscureText,
      style: TextStyle(color: AppColors.whiteColor),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.whiteColor),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1.2, color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.2, color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.2, color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.2, color: AppColors.redColor),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
