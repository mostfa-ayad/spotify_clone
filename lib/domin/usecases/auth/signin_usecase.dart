import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/usecase/usecase.dart';
import 'package:spotify_clone/data/model/auth/signin_user_req.dart';
import 'package:spotify_clone/domin/repository/auth/auth_repository.dart';
import 'package:spotify_clone/serice_locator.dart';

class SigninUsecase extends UseCase<Either, SigninUserReq> {
  @override
  Future<Either> call(SigninUserReq signinUser) {
    return sl<AuthRepository>().signin(signinUser);
  }
}
