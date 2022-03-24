import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';
part 'gamifier_user.freezed.dart';

@freezed
class gamifierUser with _$gamifierUser {
  const factory gamifierUser(UniqueId? id) = _gamifierUser;
}
