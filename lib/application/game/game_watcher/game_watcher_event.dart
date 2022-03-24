part of 'game_watcher_bloc.dart';

@freezed
class GameWatcherEvent with _$GameWatcherEvent {
  factory GameWatcherEvent.watchStarted() = _WatchAllStarted;
  factory GameWatcherEvent.notesReceived(
    Either<GameFailure, KtList<Game>> failureOrNotes,
  ) = _NotesReceived;
}
