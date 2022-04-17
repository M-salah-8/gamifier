part of 'game_detail_bloc.dart';

@freezed
class GameDetailEvent with _$GameDetailEvent {
  factory GameDetailEvent.currentUser(GamifierUserPrimitive currentUser) =
      _CurrentUser;
  const factory GameDetailEvent.initialized(GamePrimitive? game) = _Initialized;
  const factory GameDetailEvent.nameChanged(String gameName) = _NameChanged;
  const factory GameDetailEvent.gameTodosChanged(
      KtList<GameTodoPrimitive> todos) = _GameTodosChanged;
  const factory GameDetailEvent.saved() = _Saved;
}
