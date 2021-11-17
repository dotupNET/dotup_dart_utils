class DateTimeUtils {
  static DateTime? nullOrDateTime(Object? value) {
    if (value == null) {
      return null;
    } else if (value is DateTime) {
      return value;
    } else if (value.toString().isEmpty) {
      return null;
    } else if (value is int) {
      return DateTime.fromMillisecondsSinceEpoch(value);
    } else {
      return DateTime.fromMillisecondsSinceEpoch(int.parse(value.toString()));
    }
  }
}
