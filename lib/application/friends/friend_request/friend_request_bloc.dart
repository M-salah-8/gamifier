import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/friend_request/i_friend_request_repository.dart';
import 'package:gamifier/presentation/friends/misc/friends_presentation_class.dart';
import 'package:injectable/injectable.dart';

part 'friend_request_bloc.freezed.dart';
part 'friend_request_event.dart';
part 'friend_request_state.dart';

@injectable
class FriendRequestBloc extends Bloc<FriendRequestEvent, FriendRequestState> {
  // provided from spalsh_page.dart once the app is started
  late GamifierUserPrimitive currentUser;
  final IFriendRequestRepository _friendRequestRepository;
  FriendRequestBloc(
    this._friendRequestRepository,
  ) : super(const FriendRequestState.initial()) {
    on<FriendRequestEvent>((event, emit) async {
      await event.map(currentUser: (e) {
        currentUser = e.currentUser;
      }, requestSended: (e) async {
        emit(const FriendRequestState.loadInProgress());
        final requestOrFailure = await _friendRequestRepository.sendRequest(
            currentUser.toDomain(), e.receiver.toDomain());
        requestOrFailure.fold(
            (l) => emit(FriendRequestState.failureOrSuccess(l)),
            (r) => emit(
                const FriendRequestState.failureOrSuccess('request sent')));
        emit(const FriendRequestState.initial());
      }, requestAccepted: (e) async {
        await _friendRequestRepository.acceptRequest(e.requestid);
      }, requestCancelled: (e) async {
        await _friendRequestRepository.cancellRequest(e.requestid);
      });
    });
  }
}
