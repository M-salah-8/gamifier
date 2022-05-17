import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'flying_score_bloc.freezed.dart';
part 'flying_score_event.dart';
part 'flying_score_state.dart';

@injectable
class FlyingScoreBloc extends Bloc<FlyingScoreEvent, FlyingScoreState> {
  FlyingScoreBloc() : super(const FlyingScoreState(0)) {
    on<FlyingScoreEvent>((event, emit) {
      emit(FlyingScoreState(event.score));
    });
  }
}
