import 'package:freezed_annotation/freezed_annotation.dart';

sealed class DateTimeConverter<T> extends JsonConverter<DateTime, T> {
  const DateTimeConverter();
}

@immutable
final class DateMillisecondsConverter extends DateTimeConverter<int> {
  const DateMillisecondsConverter.utc() : isLocal = false;
  const DateMillisecondsConverter.local() : isLocal = true;

  final bool isLocal;

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(json, isUtc: !isLocal);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch;

  @override
  String toString() => 'DateTimeMillisecondsConverter(isLocal: $isLocal)';
}

@immutable
final class DateUnixConverter extends DateTimeConverter<int> {
  const DateUnixConverter.utc() : isLocal = false;
  const DateUnixConverter.local() : isLocal = true;

  final bool isLocal;

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(json * 1000, isUtc: !isLocal);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch ~/ 1000;

  @override
  String toString() => 'DateTimeUnixConverter(isLocal: $isLocal)';
}

@immutable
final class DateIso8601StringConverter extends DateTimeConverter<String> {
  const DateIso8601StringConverter.utc() : isLocal = false;
  const DateIso8601StringConverter.local() : isLocal = true;

  final bool isLocal;

  @override
  DateTime fromJson(String json) {
    final DateTime dateTime = DateTime.parse(json);
    return isLocal ? dateTime.toLocal() : dateTime.toUtc();
  }

  @override
  String toJson(DateTime object) {
    final DateTime date = isLocal ? object.toLocal() : object.toUtc();
    return date.toIso8601String();
  }

  @override
  String toString() => 'DateTimeIso8601StringConverter(isLocal: $isLocal)';
}
