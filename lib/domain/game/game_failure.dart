import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_failure.freezed.dart';

@freezed
class GameFailure with _$GameFailure {
  const factory GameFailure.unexpected() = _Unexpected;
  const factory GameFailure.insufficientPermission() = _InsufficientPermission;
  const factory GameFailure.unableToUpdate() = _UnableToUpdate;
}
