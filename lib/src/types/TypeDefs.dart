// ignore_for_file: prefer_generic_function_type_aliases

import 'dart:async';

Type typeOfT<T>() => T;

typedef void ValueSetter<T>(T value);

typedef FutureOr<void> FutureValueSetter<T>(T value);
typedef FutureOr<void> FutureOrValueSetter<T>(T value);

typedef FutureOr<T> FutureValueGetter<T>();
typedef FutureOr<T> FutureOrValueGetter<T>();

typedef Map<String, Object?> ToMap<T>(T item);
typedef T FromMap<T>(Map<String, Object?> map);
