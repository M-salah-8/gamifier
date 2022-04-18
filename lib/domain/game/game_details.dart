import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/domain/game/user_score.dart';
import 'package:kt_dart/collection.dart';

part 'game_details.freezed.dart';

// combining the ridgit and dinamic asbects of the game
@freezed
class GameDetails with _$GameDetails {
  const factory GameDetails(
      {required Game game,
      required KtList<UserScore> usersScores}) = _GameDetails;
}
