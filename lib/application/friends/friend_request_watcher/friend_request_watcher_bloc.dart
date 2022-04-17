import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/friend_request/i_friend_request_repository.dart';
import 'package:gamifier/presentation/friends/misc/friends_presentation_class.dart';
import 'package:injectable/injectable.dart';

part 'friend_request_watcher_bloc.freezed.dart';
part 'friend_request_watcher_event.dart';
part 'friend_request_watcher_state.dart';

@injectable
class FriendRequestWatcherBloc
    extends Bloc<FriendRequestWatcherEvent, FriendRequestWatcherState> {
  // provided from spalsh_page.dart once the app is started
  late GamifierUserPrimitive currentUser;
  final IFriendRequestRepository _friendRequestRepository;
  FriendRequestWatcherBloc(this._friendRequestRepository)
      : super(const FriendRequestWatcherState.initial()) {
    on<FriendRequestWatcherEvent>((event, emit) async {
      await event.map(currentUser: (e) {
        currentUser = e.currentUser;
      }, watchRequestStarted: (_) async {
        emit(const FriendRequestWatcherState.loadInProgress());
        final requestsDomain =
            await _friendRequestRepository.getRequest(currentUser.toDomain());
        final requests = requestsDomain
            .map((e) => FriendRequestPrimitive.fromDomain(e))
            .toList();
        emit(FriendRequestWatcherState.loadSuccess(requests));
      });
    });
  }
}
