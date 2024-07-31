import 'package:adam_fauzan_attendance_apps/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

class PinInputWidget extends StatelessWidget {
  const PinInputWidget({
    super.key,
    this.validator,
    this.onCompleted,
    required this.errorBuilderWidget,
    this.length = 6,
  });

  final String? Function(String?)? validator;
  final Function(String)? onCompleted;
  final Widget errorBuilderWidget;
  final int length;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Pinput(
        length: length,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        validator: validator,
        onCompleted: onCompleted,
        errorBuilder: (errorText, pin) {
          return errorBuilderWidget;
        },
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
        showCursor: true,
        defaultPinTheme: PinTheme(
          width: 50,
          height: 50,
          textStyle: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: AppColors.textColour60),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.colorSecondary),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        focusedPinTheme: PinTheme(
          width: 50,
          height: 50,
          textStyle: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: AppColors.textColour60),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.colorPrimary),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        submittedPinTheme: PinTheme(
          width: 50,
          height: 50,
          textStyle: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: AppColors.textColour60),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.colorPrimary),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        errorPinTheme: PinTheme(
          width: 50,
          height: 50,
          textStyle: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: AppColors.textColour60),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.danger),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
