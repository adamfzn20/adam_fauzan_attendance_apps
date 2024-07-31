import 'package:adam_fauzan_attendance_apps/resources/resources.dart';
import 'package:adam_fauzan_attendance_apps/utills/helper/validator.dart';
import 'package:adam_fauzan_attendance_apps/utills/widget/button/outlined_secondary_button.dart';
import 'package:adam_fauzan_attendance_apps/utills/widget/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class PopUpWidget {
  // Default Pop Up
  static Future<dynamic> defaultPopUp({
    required BuildContext context,
    required String titleString,
    required String middleText,
    Widget? content,
  }) {
    return Get.defaultDialog(
      backgroundColor: AppColors.surface,
      radius: 8,
      title: titleString,
      titleStyle: Theme.of(context)
          .textTheme
          .displaySmall!
          .copyWith(color: AppColors.textColour80),
      titlePadding: const EdgeInsets.only(top: 40),
      contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      content: SizedBox(
        width: 100.w,
        child: Column(
          children: [
            Text(
              middleText,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.gray600),
            ),
            content ?? const SizedBox(),
          ],
        ),
      ),
    );
  }

  // Success and Fail PopUp
  static Future<dynamic> successAndFailPopUp({
    required BuildContext context,
    required String titleString,
    required String middleText,
    required String buttonText,
    bool isSuccess = true,
    Function()? buttonOnPressed,
  }) {
    return Get.defaultDialog(
      backgroundColor: AppColors.surface,
      radius: 8,
      title: "",
      contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      content: SizedBox(
        width: 100.w,
        child: Column(
          children: [
            Lottie.asset(
                isSuccess ? AppImages.lottieSuccess : AppImages.lottieFailed,
                repeat: false,
                width: 50.w),
            const SizedBox(height: 8),
            Text(
              titleString,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: AppColors.textColour80),
            ),
            const SizedBox(height: 24),
            Text(
              middleText,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.gray600),
            ),
            const SizedBox(height: 24),
            PrimaryButton(
                title: buttonText,
                onPressed: buttonOnPressed ?? () => Get.back()),
          ],
        ),
      ),
    );
  }

  // Warning PopUp
  static Future<dynamic> warningPopUp({
    required BuildContext context,
    required String titleString,
    required String middleText,
    required Function() confirmOnPress,
  }) {
    return Get.defaultDialog(
      backgroundColor: AppColors.surface,
      radius: 8,
      title: "",
      contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      content: SizedBox(
        width: 100.w,
        child: Column(
          children: [
            Lottie.asset(AppImages.lottieWarning,
                // repeat: false,
                width: 50.w),
            const SizedBox(height: 8),
            Text(
              titleString,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: AppColors.textColour80),
            ),
            const SizedBox(height: 24),
            Text(
              middleText,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.gray600),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: 80.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(
                      width: 40.w - 32,
                      title: "txt_button_cancel".tr,
                      customColor: AppColors.danger,
                      onPressed: () => Get.back()),
                  const SizedBox(width: 16),
                  PrimaryButton(
                      width: 40.w - 32,
                      title: "txt_button_confirm".tr,
                      customColor: AppColors.success,
                      onPressed: confirmOnPress),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Image PopUp
  static Future<dynamic> imagePopUp({
    required BuildContext context,
    required String titleString,
    required String middleText,
    Widget? imageWidget,
    required String asssetImage,
    bool isSVGFormat = false,
    required String buttonText,
    Function()? buttonOnPressed,
  }) {
    return Get.defaultDialog(
      backgroundColor: AppColors.surface,
      radius: 8,
      title: "",
      contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      content: SizedBox(
        width: 100.w,
        child: Column(
          children: [
            imageWidget ??
                (isSVGFormat
                    ? SvgPicture.asset(asssetImage, width: 50.w)
                    : Image.asset(asssetImage, width: 50.w)),
            const SizedBox(height: 24),
            Text(
              titleString,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: AppColors.textColour80),
            ),
            const SizedBox(height: 24),
            Text(
              middleText,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.gray600),
            ),
            const SizedBox(height: 24),
            PrimaryButton(
                title: buttonText,
                onPressed: buttonOnPressed ?? () => Get.back()),
          ],
        ),
      ),
    );
  }

  // Forgot Password PopUp
  static Future<dynamic> forgotPasswordPopUp({
    required BuildContext context,
    required String titleString,
    required String middleText,
  }) {
    return Get.defaultDialog(
      backgroundColor: AppColors.surface,
      radius: 8,
      title: titleString,
      titleStyle: Theme.of(context)
          .textTheme
          .displaySmall!
          .copyWith(color: AppColors.textColour80),
      titlePadding: const EdgeInsets.only(top: 40),
      contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      content: SizedBox(
        width: 100.w,
        child: Column(
          children: [
            Text(
              middleText,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.gray600),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "txt_general_email".tr,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: AppColors.textColour70),
              ),
            ),
            const SizedBox(height: 8),
            FormBuilderTextField(
              name: 'email',
              decoration: InputDecoration(
                hintText: 'txt_general_email'.tr,
              ),
              validator: Validator.required(),
              keyboardType: TextInputType.emailAddress,
              maxLines: 1,
            ),
            const SizedBox(height: 24),
            PrimaryButton(
                title: 'txt_button_send_reset'.tr,
                onPressed: () {
                  // Get.offNamed(PageName.OTP_VERIFICATION);
                }),
            const SizedBox(height: 8),
            OutlinedSecondaryButton(
                title: 'txt_button_back_to_login'.tr,
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColors.colorSecondary,
                  size: 14,
                ),
                onPressed: () => Get.back()),
          ],
        ),
      ),
    );
  }
}
