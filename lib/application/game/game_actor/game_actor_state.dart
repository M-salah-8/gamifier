part of 'game_actor_bloc.dart';

@freezed
class GameActorState with _$GameActorState {
  const factory GameActorState.initial() = _Initial;
  const factory GameActorState.actionInProgress() = _ActionInProgress;
  const factory GameActorState.deleteFailure(GameFailure gameFailure) =
      _DeleteFailure;
  const factory GameActorState.deleteSuccess() = _DeleteSuccess;
}
