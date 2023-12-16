import '../constant/strings_resource.dart';

extension ValidationExtension on String {
  dynamic checkNameValidity() {
    if (length == 0) {
      return StringsResource.STR_EMPTY_NAME;
    } else if (!RegExp(r"^[a-zA-Z]{1,}(?:[ ]?[a-zA-Z]+)*$").hasMatch(this)) {
      return StringsResource.STR_ENTER_PROPER_NAME;
    } else {
      return null;
    }
  }

  dynamic checkEmailValidity() {
    if (length == 0) {
      return StringsResource.EMAIL_REQUIRED;
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this)) {
      return StringsResource.STR_INVALID_EMAIL;
    } else {
      return null;
    }
  }

  dynamic checkPasswordValidity() {
    String error = '';
    int validationCount = 0;

    if (length == 0) {
      return StringsResource.STR_ENTER_PASSWORD;
    } else if (length > 30) {
      return StringsResource.STR_PASSWORD_LENGTH_AABOVE_30;
    }
    if (length < 8) {
      error = "$error ${StringsResource.STR_8_CHARACTERS_REQ}";
      validationCount++;
    }
    if (!RegExp(r'[a-z]').hasMatch(this)) {
      error = "$error ${StringsResource.STR_LOWER_CASE_REQ}";
      validationCount++;
    }
    if (!RegExp(r'[A-Z]').hasMatch(this)) {
      error = "$error ${StringsResource.STR_UPPER_CASE_REQ}";
      validationCount++;
    }
    if (!RegExp(r'[0-9]').hasMatch(this)) {
      error = "$error ${StringsResource.STR_NUMBER_REQ}";
      validationCount++;
    }
    if (!RegExp("^(?=.*[\" \"@_{}*!-/`,§±~;\\[\\]:?<>'\"\\\\|()#\$%^&+=+])")
        .hasMatch(this)) {
      error = "$error ${StringsResource.STR_SPECIAL_CHARACTER_REQ}";
      validationCount++;
    }

    if (validationCount != 0) {
      return "${StringsResource.STR_PASSWORD_MUST_CONTAIN}$error";
    } else {
      return null;
    }
  }
}
