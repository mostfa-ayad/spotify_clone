import 'package:get_it/get_it.dart';
import 'package:spotify_clone/data/repository/auth_repository_impl.dart';
import 'package:spotify_clone/data/source/auth/auth_firebase_service.dart';
import 'package:spotify_clone/domin/repository/auth/auth_repository.dart';

final sl = GetIt.instance;

Future<void> intilizeDepencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
}
