import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/domain/game/game_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/game/i_game_repository.dart';
import 'package:gamifier/presentation/games/game_details/misc/game_todo_primitive.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'game_detail_bloc.freezed.dart';
part 'game_detail_event.dart';
part 'game_detail_state.dart';

@injectable
class GameDetailBloc extends Bloc<GameDetailEvent, GameDetailState> {
  final IGameRepository _gameRepository;
  GameDetailBloc(this._gameRepository) : super(GameDetailState.initial()) {
    on<GameDetailEvent>((event, emit) async {
      await event.map(initialized: (e) {
        e.game == null
            ? emit(GameDetailState.initial())
            : emit(state.copyWith(
                game: e.game!,
                isEditing: true,
              ));
      }, nameChanged: (e) {
        emit(state.copyWith(
            game: state.game.copyWith(name: e.gameName),
            saveFailureOrSuccessOption: none()));
      }, gameTodosChanged: (e) {
        emit(state.copyWith(
            game: state.game.copyWith(
                gameTodos:
                    e.todos.map((todoPrimitive) => todoPrimitive.toDomain())),
            saveFailureOrSuccessOption: none()));
      }, saved: (_) async {
        Either<GameFailure, Unit>? failureOrSuccess;
        emit(
            state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
        // TODO fix validation from core and then here
        // if (state.game) {
        failureOrSuccess = state.isEditing
            ? await _gameRepository.update(state.game)
            : await _gameRepository.create(state.game);
        // }
        emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      }, levelInceased: (e) {
        emit(state.copyWith(
            game: state.game.copyWith(level: e.points + state.game.level)));
      });
    });
  }
}
