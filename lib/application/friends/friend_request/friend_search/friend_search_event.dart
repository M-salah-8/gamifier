part of 'friend_search_bloc.dart';

@freezed
class FriendSearchEvent with _$FriendSearchEvent {
  const factory FriendSearchEvent.initialed() = _Initialed;
  const factory FriendSearchEvent.emailSearched(String email) = _EmailSearched;
}
