part of 'game_editing_bloc.dart';

@freezed
class GameEditingState with _$GameEditingState {
  // to store until saving edited data
  const factory GameEditingState.editedData({
    required String? newGameName,
    required KtList<GameTodoPrimitive>? editedTodos,
    required KtList<GameTodoPrimitive>? addedTodos,
    required KtList<GameTodoPrimitive>? deletedTodos,
  }) = _EditedData;

  // handle open and close of edit mood
  const factory GameEditingState.editingStarted() = _EditingStarte;
  const factory GameEditingState.editingEnded() = _EditingEnded;

  // change saving loading
  const factory GameEditingState.saveLoading(bool loading) = _SaveLoading;

  // to return the game the state it was if editing is cancled
  const factory GameEditingState.oldGameState(GamePrimitive game) =
      _OldGameState;

  // keep loading to false
  factory GameEditingState.initial() => const GameEditingState.editedData(
      newGameName: null,
      editedTodos: null,
      addedTodos: null,
      deletedTodos: null);
}
