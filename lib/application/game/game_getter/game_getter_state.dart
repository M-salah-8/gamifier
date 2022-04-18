part of 'game_getter_bloc.dart';

@freezed
class GameGetterState with _$GameGetterState {
  const factory GameGetterState.initial() = _Initial;
  const factory GameGetterState.loadInProgress() = _LoadInProgress;
  const factory GameGetterState.loadSuccess(GameDetailsPrimitive gameDetails) =
      _LoadSuccess;
  // const factory GameGetterState.loadFailure(GameFailure gameFailure) =
  //     _LoadFailure;
}
