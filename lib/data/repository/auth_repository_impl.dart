import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/model/auth/create_user_req.dart';
import 'package:spotify_clone/data/model/auth/signin_user_req.dart';
import 'package:spotify_clone/data/source/auth/auth_firebase_service.dart';
import 'package:spotify_clone/domin/repository/auth/auth_repository.dart';
import 'package:spotify_clone/serice_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signin(SigninUserReq signinUser) {
    return sl<AuthFirebaseService>().signin(signinUser);
  }

  @override
  Future<Either> signup(CreateUserReq createUser) {
    return sl<AuthFirebaseService>().signup(createUser);
  }
}
