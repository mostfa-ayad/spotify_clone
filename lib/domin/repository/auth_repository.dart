import 'package:dartz/dartz.dart';
import 'package:spotify_clone/data/model/auth/create_user_req.dart';
import 'package:spotify_clone/data/model/auth/signin_user_req.dart';

abstract class AuthRepository {
  Future<Either> signup(CreateUserReq createUser);
  Future<Either> signin(SigninUserReq signinUser);
}
