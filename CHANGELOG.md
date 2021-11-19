## 0.1.0

- Initial version.

## 0.1.1

- Relative imports

## 1.0.0

- New: typedef void ValueSetter<T>(T value);
- New: typedef FutureOr<void> FutureValueSetter<T>(T value);
- New: typedef FutureOr<void> FutureOrValueSetter<T>(T value);

## 2.0.0

- Changed: typedef Map<String, dynamic> ToMap<T>(T item);
- Changed: typedef T FromMap<T>(Map<String, dynamic> map);

- New: typedef List<Map<String, dynamic>> ToMapList<T>(T item);
- New: typedef List<T> FromMapList<T>(Map<String, dynamic> map);

## 3.0.0

- File names