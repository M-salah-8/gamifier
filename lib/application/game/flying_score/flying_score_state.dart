part of 'flying_score_bloc.dart';

@immutable
class FlyingScoreState {
  final int score;
  const FlyingScoreState(this.score);
}

// @freezed
// class FlyingScoreState with _$FlyingScoreState {
//   factory FlyingScoreState.scoreOut(int score) = _ScoreOut;
// }