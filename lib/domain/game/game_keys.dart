import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';

part 'game_keys.freezed.dart';

// game name and its ids for the game details
@freezed
class GameKey with _$GameKey {
  const factory GameKey({
    required UniqueId gameId,
    required String gameName,
    required String creater,
    required String createrId,
  }) = _GameKey;
}
