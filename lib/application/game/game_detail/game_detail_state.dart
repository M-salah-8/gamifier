part of 'game_detail_bloc.dart';

@freezed
class GameDetailState with _$GameDetailState {
  const factory GameDetailState({
    required GamePrimitive game,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<GameFailure, Unit>> saveFailureOrSuccessOption,
  }) = _GameDetailState;
  factory GameDetailState.initial() => GameDetailState(
        game: GamePrimitive.fromDomain(Game.empty()),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
