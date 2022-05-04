part of 'game_editing_bloc.dart';

@freezed
class GameEditingEvent with _$GameEditingEvent {
  // to get game details and return the game state before it was edited
  // if editing is cancled
  factory GameEditingEvent.editingStarted(GamePrimitive game) = _EditingStarted;

  // to input edited data
  factory GameEditingEvent.nameEditied(String newName) = _NameEditied;
  factory GameEditingEvent.todoEditied(GameTodoPrimitive todo) = _TodoEditied;
  factory GameEditingEvent.todoAdded(GameTodoPrimitive todo) = _TodoAdded;
  factory GameEditingEvent.todoDeleted(GameTodoPrimitive todo) = _TodoDeleted;

  // determine which editing proccess to do
  factory GameEditingEvent.saved() = _Saved;

  // cancel all editing progress
  factory GameEditingEvent.canceled() = _Canceled;
}

// factory GameEditingEvent.nameEditied(GamePrimitive game, String newName) =
  //     _NameEditied;
  // factory GameEditingEvent.todosEditied(
  //     GamePrimitive game, KtList<GameTodoPrimitive> todos) = _TodosEditied;
  // factory GameEditingEvent.todosAdded(
  //     GamePrimitive game, KtList<GameTodoPrimitive> todos) = _TodosAdded;
  // factory GameEditingEvent.todosDeleted(
  //     GamePrimitive game, KtList<GameTodoPrimitive> todos) = _TodosDeleted;


  // handling loading
  // const factory GameEditingEvent.editingStarted() = _EditingStarted;
  // loading will be stoped by canceled event
  // const factory GameEditingEvent.editingStopped() = _EditingStopped;