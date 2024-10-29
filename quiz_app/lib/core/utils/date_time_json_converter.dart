import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class DateTimeJsonConverter implements JsonConverter<DateTime, String> {
  const DateTimeJsonConverter();

  @override
  DateTime fromJson(String json) {
    return DateFormat('dd.MM.yyyy HH:mm').parse(json);
  }

  @override
  String toJson(DateTime object) {
    return DateFormat('dd.MM.yyyy HH:mm').format(object);
  }
}
