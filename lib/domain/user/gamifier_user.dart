import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';

part 'gamifier_user.freezed.dart';

// user fileds get filed when signing up
@freezed
class GamifierUser with _$GamifierUser {
  const factory GamifierUser({
    required UniqueId id,
    required String name,
    required String email,
  }) = _GamifierUser;
}
