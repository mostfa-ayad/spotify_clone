import 'package:get_it/get_it.dart';
import 'package:spotify_clone/data/repository/auth_repository_impl.dart';
import 'package:spotify_clone/data/repository/song_repository_impl.dart';
import 'package:spotify_clone/data/source/auth_firebase_service.dart';
import 'package:spotify_clone/data/source/song_firebase_service.dart';
import 'package:spotify_clone/domin/repository/auth_repository.dart';
import 'package:spotify_clone/domin/repository/song_repository.dart';
import 'package:spotify_clone/domin/usecases/song/get_news_songs_usecase.dart';

final sl = GetIt.instance;

Future<void> intilizeDepencies() async {
  //services
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<SongFirebaseService>(SongFirebaseServiceImpl());
  //repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<SongRepository>(SongRepositoryImpl());
  //usecases
  sl.registerSingleton<GetNewsSongsUsecase>(GetNewsSongsUsecase());
}
