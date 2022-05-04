part of 'game_detail_bloc.dart';

@freezed
class GameDetailEvent with _$GameDetailEvent {
  factory GameDetailEvent.currentUser(GamifierUserPrimitive currentUser) =
      _CurrentUser;
  const factory GameDetailEvent.initialized(
      GamePrimitive? game, List<UserScorePrimitive>? gamescores) = _Initialized;
  const factory GameDetailEvent.nameChanged(String gameName) = _NameChanged;
  const factory GameDetailEvent.levelChanged(int todoPoints) = _LevelChanged;
  const factory GameDetailEvent.friendAdded(GamifierUserPrimitive friend) =
      _FriendAdded;
  const factory GameDetailEvent.gameTodosChanged(
      KtList<GameTodoPrimitive> todos) = _GameTodosChanged;
  const factory GameDetailEvent.saved() = _Saved;
}
