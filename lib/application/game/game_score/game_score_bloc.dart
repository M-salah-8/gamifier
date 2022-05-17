import 'package:bloc/bloc.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/game/i_game_repository.dart';
import 'package:gamifier/presentation/friends/misc/friends_presentation_class.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'game_score_bloc.freezed.dart';
part 'game_score_event.dart';
part 'game_score_state.dart';

@injectable
class GameScoreBloc extends Bloc<GameScoreEvent, GameScoreState> {
  late GamifierUserPrimitive currentUser;
  final IGameRepository _gameRepository;
  GameScoreBloc(this._gameRepository) : super(GameScoreState(0)) {
    on<GameScoreEvent>((event, emit) async {
      await event.map(currentUser: (e) {
        currentUser = e.currentUser;
      }, todoChecked: (e) async {
        final newLevel = e.level + e.todo.points;
        final newTodo = e.todo.copyWith(times: e.todo.times + 1);
        // display to user
        // save to repository
        emit(GameScoreState(e.todo.points));
        await _gameRepository.todoChecked(UniqueId.fromUniqueString(e.gameId),
            UniqueId.fromUniqueString(e.userId), newTodo.toDomain(), newLevel);
      });
    });
  }
}
