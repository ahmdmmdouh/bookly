import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonTitle,
      required this.buttonTextColor,
      required this.onPressed,
      required this.backGroundColor,
      this.borderRadius});
  final String buttonTitle;
  final Color backGroundColor, buttonTextColor;
  final void Function() onPressed;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius!)),
      onPressed: () {},
      child: Text(
        buttonTitle,
        style: Styles.regular14
            .copyWith(color: buttonTextColor, fontWeight: FontWeight.w900),
      ),
    );
  }
}
