part of 'game_detail_bloc.dart';

@freezed
class GameDetailState with _$GameDetailState {
  const factory GameDetailState({
    required GamePrimitive game,
    required int level,
    required GamifierUserPrimitive currentUser,
    required List<UserScorePrimitive> friendsScores,
    required bool showErrorMessages,
    required bool isAdmin,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<GameFailure, Unit>> saveFailureOrSuccessOption,
  }) = _GameDetailState;
  factory GameDetailState.initial() => GameDetailState(
        game: GamePrimitive.fromDomain(Game.empty()),
        friendsScores: <UserScorePrimitive>[],
        level: 0,
        currentUser: GamifierUserPrimitive.empty(),
        showErrorMessages: false,
        isAdmin: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
