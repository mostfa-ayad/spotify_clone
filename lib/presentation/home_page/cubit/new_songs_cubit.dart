import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:spotify_clone/domin/entities/song_entity.dart';
import 'package:spotify_clone/domin/usecases/song/get_news_songs_usecase.dart';
import 'package:spotify_clone/service_locator.dart';

part 'new_songs_state.dart';

class NewSongsCubit extends Cubit<NewSongsState> {
  NewSongsCubit() : super(LoadingNewSongs());

  load() async {
    var response = await sl<GetNewsSongsUsecase>().call();
    response.fold((l) {
      emit(ErrorNewSongs(msg: l));
    }, (r) {
      emit(LoadNewSongs(list: r));
    });
  }
}
