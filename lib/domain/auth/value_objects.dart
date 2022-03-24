import 'package:gamifier/domain/core/value_objects.dart';

class EmailAddress extends ValueObject<String> {
  @override
  late final String value;
  EmailAddress(this.value);
}

class Password extends ValueObject<String> {
  @override
  late final String value;
  Password(this.value);
}
