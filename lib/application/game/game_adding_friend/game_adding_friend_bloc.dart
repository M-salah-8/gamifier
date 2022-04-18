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
      emit(const GameAddingFriendState.loadInProgress());
      List<String> newList = event.game.usersId;
      newList.add(event.friend.id);
      event.game
          .copyWith(usersId: newList, noOfUsers: event.game.noOfUsers + 1);
      event.game.copyWith(noOfUsers: event.game.noOfUsers + 1);
      await _gameRepository.addFriend(
          event.game.toDomain(), event.friend.toDomain());
      emit(const GameAddingFriendState.friendAdded());
    });
  }
}
