import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/domain/game/game_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/game/i_game_repository.dart';
import 'package:gamifier/presentation/friends/misc/friends_presentation_class.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'game_detail_bloc.freezed.dart';
part 'game_detail_event.dart';
part 'game_detail_state.dart';

@injectable
class GameDetailBloc extends Bloc<GameDetailEvent, GameDetailState> {
  // provided from spalsh_page.dart once the app is started
  late GamifierUserPrimitive currentUser;
  final IGameRepository _gameRepository;
  GameDetailBloc(this._gameRepository) : super(GameDetailState.initial()) {
    on<GameDetailEvent>((event, emit) async {
      await event.map(currentUser: (e) {
        currentUser = e.currentUser;
      }, initialized: (e) {
        // #### when game is getting created
        if (e.game == null) {
          emit(GameDetailState.initial().copyWith(currentUser: currentUser));
        } else if (e.gamescores != null) {
          // #### game is playing (or editing)
          /// check if current user is adimn
          final isAdmin = e.game!.admin == currentUser.id;
          // find current user and combine his todos with game todos
          final currentUserScores = e.gamescores!
              .where((score) => score.gamifierUserId == currentUser.id)
              .first;
          // combining
          final gameTodos = e.game!.gameTodos.map((gameTodo) {
            final userTodo = currentUserScores.gameTodos
                .where((userTodo) => userTodo.id == gameTodo.id)
                .first;
            return gameTodo.copyWith(times: userTodo.times);
          }).toList();
          // get friends scores
          final friendsScores = e.gamescores!
            ..sort((b, a) => a.level.compareTo(b.level))
            ..remove(currentUserScores);

          // set user level and users scores
          final level = currentUserScores.level;

          // emit new state
          emit(state.copyWith(
              game: e.game!.copyWith(gameTodos: gameTodos),
              currentUser: currentUser,
              isAdmin: isAdmin,
              isEditing: true,
              level: level,
              friendsScores: friendsScores));
        } else {
          // #### retrive old state when editing get canceled
          emit(state.copyWith(game: e.game!));
        }
      }, nameChanged: (e) {
        emit(state.copyWith(
            game: state.game.copyWith(name: e.gameName),
            saveFailureOrSuccessOption: none()));
      }, gameTodosChanged: (e) {
        emit(state.copyWith(
            game: state.game.copyWith(gameTodos: e.todos.asList()),
            saveFailureOrSuccessOption: none()));
      }, saved: (_) async {
        Either<GameFailure, Unit>? failureOrSuccess;
        emit(
            state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
        failureOrSuccess = await _gameRepository.create(
            state.game.toDomain(), currentUser.toDomain());
        emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      }, levelChanged: (e) {
        emit(state.copyWith(level: state.level + e.todoPoints));
      }, friendAdded: (e) {
        final newUser = UserScorePrimitive.empty()
            .copyWith(userName: e.friend.name, gamifierUserId: e.friend.id);
        emit(state.copyWith(
            friendsScores: state.friendsScores..add(newUser),
            game: state.game
                .copyWith(usersId: state.game.usersId..add(e.friend.id))));
      });
    });
  }
}
