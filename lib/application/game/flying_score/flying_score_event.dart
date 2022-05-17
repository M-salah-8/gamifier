part of 'flying_score_bloc.dart';

@freezed
class FlyingScoreEvent with _$FlyingScoreEvent {
  factory FlyingScoreEvent.scoreIn(int score) = _ScoreIn;
}
