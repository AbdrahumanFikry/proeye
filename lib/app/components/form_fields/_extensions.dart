import 'package:built_collection/built_collection.dart';
import 'package:intl/intl.dart' as intl;
import 'package:pro_eye/generated/l10n.dart';

extension DateTimeExt on DateTime {
  String toShortUserString() {
    if (this == null) return '-';
    return intl.DateFormat.yMMMMd().format(this);
  }

  String toLongUserString() {
    if (this == null) return '-';
    var local = this.toLocal();
    return intl.DateFormat.yMMMMEEEEd().format(local) +
        ' @ ' +
        intl.DateFormat.jm().format(local);
  }
}

extension DurationExt on Duration {
  String toUserString() {
    if (this == null) return '-';
    final totalDays = this.inDays;
    final years = totalDays ~/ 365;
    final months = (totalDays % 365) ~/ 30;
    final days = (totalDays % 365) % 30;
    return '$years ${S.current.years} , $months ${S.current.months} , $days ${S.current.days}';
  }
}

extension IterableExt<T> on Iterable<T> {
  T get firstOrDefault => this.firstWhere((_) => true, orElse: () => null);
}

extension BuiltListExt<T> on BuiltList<T> {
  T get firstOrDefault => this.firstWhere((_) => true, orElse: () => null);
}
