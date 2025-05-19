import 'package:collection/collection.dart';

class Enums {
  static T? fromString<T>(Iterable<T> values, String value) {
    return values.firstWhereOrNull(
      (type) => type.toString().split(".").last == value.replaceAll(' ', '_'),
    );
  }

  static String valueString<T>(T enumValue, {bool replaceSeparators = true}) {
    if (replaceSeparators) {
      return enumValue.toString().split(".")[1].replaceAll("_", " ");
    }
    return enumValue.toString().split(".")[1];
  }

  static List<String> toList<T>(Iterable<T> values) {
    List<String> list = [];
    // ignore: avoid_function_literals_in_foreach_calls
    values.forEach((element) => list.add(valueString(element)));

    return list;
  }
}
