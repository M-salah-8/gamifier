import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/game/game_todo.dart';
import 'package:kt_dart/collection.dart';
part 'user_score.freezed.dart';

// games aspect unique for every users
@freezed
class UserScore with _$UserScore {
  const factory UserScore(
      {required UniqueId gameId,
      required UniqueId gamifierUserId,
      required String userName,
      required int level,
      required KtList<GameTodo> gameTodos}) = _UserScore;
}
