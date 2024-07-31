import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class Validator {
  static FormFieldValidator<T> list<T>(List<FormFieldValidator<T>> validators) {
    return (valueCandidate) {
      for (var validator in validators) {
        final validatorResult = validator.call(valueCandidate);
        if (validatorResult != null) {
          return validatorResult;
        }
      }
      return null;
    };
  }

  static FormFieldValidator<T> required<T>() {
    return FormBuilderValidators.required(errorText: 'Tidak boleh kosong');
  }

  static FormFieldValidator<String> email<T>(String err) {
    return FormBuilderValidators.email(errorText: err);
  }

  static FormFieldValidator<String> minLength<T>(int minLength) {
    return FormBuilderValidators.minLength(minLength);
  }

  static FormFieldValidator<String> maxLength<T>(int maxLength) {
    return FormBuilderValidators.maxLength(maxLength);
  }

  static FormFieldValidator<String> emailPhone<T>(String err) {
    return (v) {
      if (v != null) {
        if (GetUtils.isEmail(v) || GetUtils.isPhoneNumber(v)) {
          return null;
        } else {
          return err;
        }
      } else {
        return err;
      }
    };
  }

  // static FormFieldValidator minLength(int minLength, String err) {
  //   return FormBuilderValidators.minLength(
  //     minLength,
  //     errorText: err,
  //     allowEmpty: false,
  //   );
  // }

  static FormFieldValidator equal(String comparator, String err) {
    return FormBuilderValidators.equal(comparator, errorText: err);
  }

  String? password(String? value) {
    String pattern = r'^.{6,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return 'txt_valid_password'.tr;
    } else {
      return null;
    }
  }

  String? name(String? value) {
    String pattern = r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return 'txt_valid_name'.tr;
    } else {
      return null;
    }
  }

  String? number(String? value) {
    String pattern = r'^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return 'txt_valid_number'.tr;
    } else {
      return null;
    }
  }

  String? notEmpty(String? value) {
    String pattern = r'^\S+$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return 'txt_valid_notEmpty'.tr;
    } else {
      return null;
    }
  }
}
