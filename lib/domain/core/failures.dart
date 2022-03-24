import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailuer<T> with _$ValueFailuer<T> {
  const factory ValueFailuer.invalidEmail(T email) = _InvalidEmail;
  const factory ValueFailuer.shortPassword(T password) = _ShortPassword;
}
