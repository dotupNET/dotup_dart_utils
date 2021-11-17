class StringUtils {
  static String? nullOrString(Object? value) {
    if (value == null) {
      return null;
    } else {
      return value.toString().isEmpty ? null : value as String;
    }
  }

  static String toEmptyString(Object? value) {
    if (value == null) {
      return '';
    } else {
      switch (value.runtimeType) {
        case int:
          return value.toString();

        case DateTime:
          return (value as DateTime).toIso8601String();

        default:
          return value.toString();
      }
    }
  }

  static String? limitTextLength(String? text, int length, {String endString = '...'}) {
    if (text == null) {
      return null;
    }

    if (text.length > length) {
      return '${text.substring(0, length)}$endString';
    } else {
      return text;
    }
  }
}
