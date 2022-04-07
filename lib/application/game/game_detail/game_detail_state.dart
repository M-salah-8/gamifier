part of 'game_detail_bloc.dart';

@freezed
class GameDetailState with _$GameDetailState {
  const factory GameDetailState({
    required Game game,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<GameFailure, Unit>> saveFailureOrSuccessOption,
  }) = _GameDetailState;
  factory GameDetailState.initial() => GameDetailState(
        game: Game.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
