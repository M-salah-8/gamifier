import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/game/i_game_repository.dart';
import 'package:gamifier/presentation/friends/misc/friends_presentation_class.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:injectable/injectable.dart';

part 'game_adding_friend_bloc.freezed.dart';
part 'game_adding_friend_event.dart';
part 'game_adding_friend_state.dart';

@injectable
class GameAddingFriendBloc
    extends Bloc<GameAddingFriendEvent, GameAddingFriendState> {
  final IGameRepository _gameRepository;
  GameAddingFriendBloc(this._gameRepository)
      : super(const GameAddingFriendState.initial()) {
    on<GameAddingFriendEvent>((event, emit) async {
      // make todos' times 0 for the new player
      final newGame = event.game.copyWith(
          gameTodos:
              event.game.gameTodos.map((e) => e.copyWith(times: 0)).toList());
      emit(const GameAddingFriendState.loadInProgress());
      final friendAddedOrFailure = await _gameRepository.addFriend(
          newGame.toDomain(), event.friend.toDomain(), event.game.adminName);
      emit(friendAddedOrFailure.fold(
          (l) => GameAddingFriendState.friendAddedFailure(l),
          (r) => GameAddingFriendState.friendAdded(event.friend)));
    });
  }
}
