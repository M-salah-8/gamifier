part of 'game_score_bloc.dart';

@freezed
class GameScoreEvent with _$GameScoreEvent {
  factory GameScoreEvent.currentUser(GamifierUserPrimitive currentUser) =
      _CurrentUser;
  factory GameScoreEvent.todoChecked({
    required String gameId,
    required String userId,
    required GameTodoPrimitive todo,
    required int level,
  }) = _TodoChecked;
}
