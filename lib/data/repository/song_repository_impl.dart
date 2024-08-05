import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/source/song_firebase_service.dart';
import 'package:spotify_clone/domin/repository/song_repository.dart';
import 'package:spotify_clone/service_locator.dart';

class SongRepositoryImpl extends SongRepository {
  @override
  Future<Either> getNews() async {
    print("repository called");
    return await sl<SongFirebaseService>().getNews();
  }
}
