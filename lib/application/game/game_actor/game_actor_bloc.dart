import 'package:bloc/bloc.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/domain/game/game_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/game/i_game_repository.dart';
import 'package:injectable/injectable.dart';

part 'game_actor_bloc.freezed.dart';
part 'game_actor_event.dart';
part 'game_actor_state.dart';

@injectable
class GameActorBloc extends Bloc<GameActorEvent, GameActorState> {
  IGameRepository _gameRepository;
  GameActorBloc(this._gameRepository) : super(const GameActorState.initial()) {
    on<GameActorEvent>((event, emit) async {
      emit(const GameActorState.actionInProgress());
      final possibleFailure = await _gameRepository.delete(event.game);
      emit(possibleFailure.fold(
        (f) => GameActorState.deleteFailure(f),
        (_) => const GameActorState.deleteSuccess(),
      ));
    });
  }
}
