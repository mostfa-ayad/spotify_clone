import 'package:dartz/dartz.dart';
import 'package:spotify_clone/domin/repository/song_repository.dart';
import 'package:spotify_clone/service_locator.dart';

class SongRepositoryImpl extends SongRepository {
  @override
  Future<Either> getNews() async {
    return await sl<SongRepository>().getNews();
  }
}
