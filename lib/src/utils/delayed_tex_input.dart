import 'dart:async';

import '../../dotup_dart_utils.dart';

class DelayedTextInput {
  late final Duration delay;
  late final ValueSetter<String?> callback;
  Timer? _timer;
  String? _value;

  String? get value => _value;

  DelayedTextInput({
    required this.delay,
    required this.callback,
  });

  void changeValue([String? newValue]) {
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
