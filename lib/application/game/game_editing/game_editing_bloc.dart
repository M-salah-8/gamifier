import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/game/i_game_repository.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'game_editing_bloc.freezed.dart';
part 'game_editing_event.dart';
part 'game_editing_state.dart';

@injectable
class GameEditingBloc extends Bloc<GameEditingEvent, GameEditingState> {
  late GamePrimitive game;
  final IGameRepository _gameRepository;
  GameEditingBloc(this._gameRepository) : super(GameEditingState.initial()) {
    on<GameEditingEvent>((event, emit) async {
      await event.map(
          // get game data
          editingStarted: (e) {
        emit(const GameEditingState.editingStarted());
        emit(GameEditingState.initial());
        game = e.game;
      },

          // map new data
          nameEditied: (editedName) {
        emit(state.mapOrNull(editedData: (e) {
          // if name is the same as old name don't save
          if (e.newGameName == game.name) {
            return e.copyWith(newGameName: null);
          }
          return e.copyWith(newGameName: editedName.newName);
        })!);
      }, todoEditied: (editedTodo) {
        final newEditedTodo = editedTodo.todo;
        emit(state.mapOrNull(editedData: (e) {
          // check if the todo is add in editing and not yet saved in
          // data base if true replace with newEditedTodo added todo list
          if (e.addedTodos != null) {
            final isTodoNewlyAdded = e.addedTodos!
                .any((addedTodo) => addedTodo.id == newEditedTodo.id);
            if (isTodoNewlyAdded) {
              final newlyAddedTodo = e.addedTodos!
                  .find((addedTodo) => addedTodo.id == newEditedTodo.id);
              final newList = e.addedTodos!
                  .minusElement(newlyAddedTodo!)
                  .plusElement(newEditedTodo);
              return e.copyWith(addedTodos: newList);
            }
          } else
          // initilaizing list
          if (e.editedTodos == null) {
            return e.copyWith(editedTodos: KtList.of(newEditedTodo));
          }
          // check if edited before and put new edit
          final wasEdited = e.editedTodos!.any((allreadyEditedTodo) =>
              allreadyEditedTodo.id == newEditedTodo.id);
          if (wasEdited) {
            final oldEdit = e.editedTodos!.find((allreadyEditedTodo) =>
                allreadyEditedTodo.id == newEditedTodo.id);
            return e.copyWith(
                editedTodos: e.editedTodos!
                    .minusElement(oldEdit!)
                    .plusElement(newEditedTodo));
          } else {
            return e.copyWith(
                editedTodos: e.editedTodos!.plusElement(newEditedTodo));
          }
        })!);
      }, todoAdded: (addedTodo) {
        final newAddedTodo = addedTodo.todo;
        emit(state.mapOrNull(editedData: (e) {
          // initilaizing list
          if (e.addedTodos == null) {
            return e.copyWith(addedTodos: KtList.of(newAddedTodo));
          } else {
            return e.copyWith(
                addedTodos: e.addedTodos!.plusElement(newAddedTodo));
          }
        })!);
      }, todoDeleted: (deletedTodo) {
        final newDeletedTodo = deletedTodo.todo;
        emit(state.mapOrNull(editedData: (e) {
          // check if the todo is add in editing and not yet saved in
          // data base if true just remove from added todo list
          if (e.addedTodos != null) {
            final isTodoNewlyAdded = e.addedTodos!
                .any((addedTodo) => addedTodo.id == newDeletedTodo.id);
            if (isTodoNewlyAdded) {
              final newlyAddedTodo = e.addedTodos!
                  .find((addedTodo) => addedTodo.id == newDeletedTodo.id);
              final newList = e.addedTodos!.minusElement(newlyAddedTodo!);
              // if the list became empty return null
              return e.copyWith(
                  addedTodos: newList.isNotEmpty() ? newList : null);
            } else {
              // initilaizing list
              if (e.deletedTodos == null) {
                return e.copyWith(deletedTodos: KtList.of(newDeletedTodo));
              } else {
                // if initilaized add element
                return e.copyWith(
                    addedTodos: e.addedTodos!.plusElement(newDeletedTodo));
              }
            }
          }
          // if added todos is null
          else {
            // initilaizing list
            if (e.deletedTodos == null) {
              return e.copyWith(deletedTodos: KtList.of(newDeletedTodo));
            } else {
              // if initilaized add element
              return e.copyWith(
                  addedTodos: e.addedTodos!.plusElement(newDeletedTodo));
            }
          }
        })!);
      },

          // preform save operations only on edited values
          saved: (_) async {
        // editing data is the current state save it to emit it again
        final editedData = state;
        emit(const GameEditingState.saveLoading(true));
        emit(editedData);
        state.mapOrNull(editedData: (e) async {
          if (e.newGameName != null) {
            await _gameRepository.changeGameName(
                game.toDomain(), e.newGameName!);
          }
          if (e.editedTodos != null) {
            await _gameRepository.editTodos(
                game.toDomain(),
                e.editedTodos!
                    .map((gametodoprimitive) => gametodoprimitive.toDomain()));
          }
          if (e.addedTodos != null) {
            await _gameRepository.addTodos(
                game.toDomain(),
                e.addedTodos!
                    .map((gametodoprimitive) => gametodoprimitive.toDomain()));
          }
          if (e.deletedTodos != null) {
            await _gameRepository.deleteTodos(
                game.toDomain(),
                e.deletedTodos!
                    .map((gametodoprimitive) => gametodoprimitive.toDomain()));
          }
        });
        emit(const GameEditingState.saveLoading(false));
        emit(const GameEditingState.editingEnded());
      },
          // emit game data before editing
          canceled: (_) {
        emit(const GameEditingState.editingEnded());
        emit(GameEditingState.oldGameState(game));
      });
    });
  }
}
