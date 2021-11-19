import 'dart:async';

import '../types/type_defs.dart';

class DelayedValue<T> {
  late final Duration delay;
  late final FutureOrValueSetter<T> callback;
  Timer? _timer;
  late T _value;

  T get value => _value;

  DelayedValue({
    required this.delay,
    required this.callback,
  });

  void update(T newValue) {
    _value = newValue;
    _timer?.cancel();
    _timer = null;
    if (newValue == null) {
      _callback();
    } else {
      _timer = Timer(delay, _callback);
    }
  }

  void _callback() {
    _timer?.cancel();
    callback(_value);
  }
}
