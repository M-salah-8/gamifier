import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/friend_request/i_friend_request_repository.dart';
import 'package:gamifier/presentation/friends/misc/friends_presentation_class.dart';
import 'package:injectable/injectable.dart';

part 'friend_watcher_bloc.freezed.dart';
part 'friend_watcher_event.dart';
part 'friend_watcher_state.dart';

@injectable
class FriendWatcherBloc extends Bloc<FriendWatcherEvent, FriendWatcherState> {
  // provided from spalsh_page.dart once the app is started
  late GamifierUserPrimitive currentUser;
  final IFriendRequestRepository _friendRequestRepository;
  FriendWatcherBloc(this._friendRequestRepository)
      : super(const FriendWatcherState.initial()) {
    on<FriendWatcherEvent>((event, emit) async {
      await event.map(currentUser: (e) {
        currentUser = e.currentUser;
      }, watchGamesStarted: (_) async {
        emit(const FriendWatcherState.loadInProgress());
        final friendsDomain =
            await _friendRequestRepository.getFriends(currentUser.toDomain());
        final friends = friendsDomain
            .map((e) => GamifierUserPrimitive.fromDomain(e))
            .toList();
        emit(FriendWatcherState.loadSuccess((friends)));
      });
    });
  }
}
