// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'new_songs_cubit.dart';

@immutable
abstract class NewSongsState {}

class LoadingNewSongs extends NewSongsState {}

class LoadNewSongs extends NewSongsState {
  List<SongEntity> list;
  LoadNewSongs({
    required this.list,
  });
}

class ErrorNewSongs extends NewSongsState {
  String msg;
  ErrorNewSongs({
    required this.msg,
  });
}
