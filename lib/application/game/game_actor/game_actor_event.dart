part of 'game_actor_bloc.dart';

@freezed
class GameActorEvent with _$GameActorEvent {
  const factory GameActorEvent.deleted(Game game) = _Deleted;
}
