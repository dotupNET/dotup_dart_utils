extension DateTimeExtension on DateTime {
  DateTime roundUp({Duration delta = const Duration(minutes: 15)}) {
    final newDate = add(delta);
    return newDate.roundDown(delta: delta);
    // return DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch + millisecondsSinceEpoch % delta.inMilliseconds);
  }

  DateTime roundDown({Duration delta = const Duration(minutes: 15)}) {
    return DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch - millisecondsSinceEpoch % delta.inMilliseconds);
  }
}
