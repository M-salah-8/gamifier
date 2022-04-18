part of 'friend_search_bloc.dart';

@freezed
class FriendSearchState with _$FriendSearchState {
  const factory FriendSearchState.initial() = _initial;
  const factory FriendSearchState.loaded() = _Loaded;
  const factory FriendSearchState.received(GamifierUserPrimitive gamifierUser) =
      _Received;
  const factory FriendSearchState.failed(String failer) = _Failed;
}
