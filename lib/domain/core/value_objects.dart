import 'package:uuid/uuid.dart';

abstract class ValueObject<T> {
  T get value;
  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
  @override
  String toString() {
    return "Value('$value')";
  }

  bool isValid(T? valid) {
    return valid == null ? true : false;
  }
}

class UniqueId extends ValueObject<String> {
  @override
  String value;
  UniqueId._(this.value);
  factory UniqueId() {
    return UniqueId._(const Uuid().v1());
  }
  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(uniqueId);
  }
}
