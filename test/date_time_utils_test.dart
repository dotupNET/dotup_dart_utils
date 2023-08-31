import 'package:dotup_dart_utils/dotup_dart_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('date_time_extensions', () {
    test('roundUp', () {
      final now = DateTime(2021, 10, 17, 20, 40, 0, 0, 0);
      final later = DateTime(2021, 10, 17, 20, 45, 0, 0, 0);

      expect(now.roundUp(), later);
    });
  });
  group('date_time_utils', () {
    test('nullOrDateTime', () {
      final noDate = DateTimeUtils.nullOrDateTime(null);

      expect(noDate, null);
      expect(DateTimeUtils.nullOrDateTime(DateTime.now()), isA<DateTime>());
    });
  });
}
