import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/friend_request/i_friend_request_repository.dart';
import 'package:gamifier/presentation/friends/misc/friends_presentation_class.dart';
import 'package:injectable/injectable.dart';

part 'friend_search_bloc.freezed.dart';
part 'friend_search_event.dart';
part 'friend_search_state.dart';

@injectable
class FriendSearchBloc extends Bloc<FriendSearchEvent, FriendSearchState> {
  final IFriendRequestRepository _friendRequestRepository;
  FriendSearchBloc(this._friendRequestRepository)
      : super(const FriendSearchState.initial()) {
    on<FriendSearchEvent>((event, emit) async {
      await event.map(initialed: (_) {
        emit(const FriendSearchState.initial());
      }, emailSearched: (e) async {
        emit(const FriendSearchState.loaded());
        final user = await _friendRequestRepository.getUsersByEmail(e.email);
        user.fold(
            (l) => emit(FriendSearchState.failed(l)),
            (r) => emit(FriendSearchState.received(
                GamifierUserPrimitive.fromDomain(r))));
      });
    });
  }
}
