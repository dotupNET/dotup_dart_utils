import '../../dotup_dart_utils.dart';

class EnumUtils {
// void test() {
//   final a = getEnumFromName<TestEnum>(TestEnum.values, 'A');
//   final b = getEnumFromValue(TestEnum.values, 1);
// }

  static List<KeyValue<int>> getEnumKeyValue(List<dynamic> enumType, {bool removeFirst = false}) {
    final items = enumType.map((dynamic e) {
      return KeyValue<int>(getName(e), e.shade);
    }).toList();
    if (removeFirst) {
      items.removeAt(0);
    }
    return items;
  }

  static T getEnumFromName<T>(Iterable<T> values, String name) {
    return values.where((value) => getName(value as Object) == name).first;
  }

  static T getValueFromName<T>(Iterable<T> values, String name) {
    return values.where((value) => getName(value as Object) == name).first;
  }

  static T getEnumFromValue<T extends dynamic>(List<T> enumValues, int index) {
    return enumValues.where((value) {
      return value.shade == index;
    }).first;
  }

  static String getName(Object enumEntry) {
    final description = enumEntry.toString();
    final indexOfDot = description.indexOf('.');
    assert(
      indexOfDot != -1 && indexOfDot < description.length - 1,
      'The provided object "$enumEntry" is not an enum.',
    );
    return description.substring(indexOfDot + 1);
  }
}
