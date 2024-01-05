class AppInputValidators {
  static String? emptyValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'Поле обязательно для заполнения';
    }
    return null;
  }

  static String? pinCodeValidator({
    required String? str,
    bool useLengthValidator = true,
  }) {
    if (str == null || str.isEmpty) {
      return 'Введите код';
    }
    if (str.length != 4 && useLengthValidator) {
      return 'Пин должен состоять из 4 символов';
    }
    final regexp = RegExp(r'^[0-9]*$');

    if (!regexp.hasMatch(str)) {
      return 'Разрешены только целые числа';
    }

    return null;
  }

  static String? pinCodeRepeatValidator({
    required String? firstPin,
    required String? str,
    bool useLengthValidator = true,
  }) {
    if (str == null || str.isEmpty) {
      return 'Введите код';
    }
    if (str.length != 4 && useLengthValidator) {
      return 'Пин должен состоять из 4 символов';
    }
    if (str.length == 4 && firstPin != str) {
      return 'Пароли не совпадают';
    }
    final regexp = RegExp(r'^[0-9]*$');

    if (!regexp.hasMatch(str)) {
      return 'Разрешены только целые числа';
    }

    return null;
  }

  static String? esiSmsCodeValidator({
    required String? str,
  }) {
    if (str == null || str.isEmpty) {
      return 'Введите код';
    }
    if (str.length != 6) {
      return 'Пин должен состоять из 6 символов';
    }
    final regexp = RegExp(r'^[0-9]*$');

    if (!regexp.hasMatch(str)) {
      return 'Разрешены только целые числа';
    }

    return null;
  }
}
