part of 'game_getter_bloc.dart';

@freezed
class GameGetterEvent with _$GameGetterEvent {
  factory GameGetterEvent.getGame(String gameId) = _getGame;
}
