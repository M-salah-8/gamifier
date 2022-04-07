part of 'game_detail_bloc.dart';

@freezed
class GameDetailEvent with _$GameDetailEvent {
  const factory GameDetailEvent.initialized(Game? game) = _Initialized;
  const factory GameDetailEvent.nameChanged(String gameName) = _NameChanged;
  const factory GameDetailEvent.levelInceased(int points) = _LevelInceased;
  const factory GameDetailEvent.gameTodosChanged(
      KtList<GameTodoPrimitive> todos) = _GameTodosChanged;
  const factory GameDetailEvent.saved() = _Saved;
}
