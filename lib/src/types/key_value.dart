class KeyValue<TKey, TValue> {
  late final TKey key;
  late final TValue value;

  KeyValue(this.key, this.value);

  static KeyValue<String, TValue> string<TValue>(String key, TValue value) {
    return KeyValue<String, TValue>(key, value);
  }

  static KeyValue<int, TValue> integer<TValue>(int key, TValue value) {
    return KeyValue<int, TValue>(key, value);
  }
}
