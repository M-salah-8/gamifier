import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/game/game_keys.dart';
import 'package:kt_dart/kt.dart';

part 'user_games_list.freezed.dart';

// all games that a user is participating in and there ids (to get details)
@freezed
class UserGamesList with _$UserGamesList {
  const factory UserGamesList(
      {required UniqueId userId,
      required KtList<GameKey> gamekeys}) = _UserGamesList;
}
