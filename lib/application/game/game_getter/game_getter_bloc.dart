import 'package:bloc/bloc.dart';
import 'package:gamifier/domain/game/i_game_repository.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_getter_bloc.freezed.dart';
part 'game_getter_event.dart';
part 'game_getter_state.dart';

@injectable
class GameGetterBloc extends Bloc<GameGetterEvent, GameGetterState> {
  final IGameRepository _gameRepository;
  GameGetterBloc(this._gameRepository)
      : super(const GameGetterState.initial()) {
    on<GameGetterEvent>((event, emit) async {
      emit(const GameGetterState.loadInProgress());
      final gameDetails = await _gameRepository.gameDetails(event.gameId);
      emit(GameGetterState.loadSuccess(
          GameDetailsPrimitive.fromDomain(gameDetails)));
    });
  }
}
