import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/usecase/usecase.dart';
import 'package:spotify_clone/data/model/auth/create_user_req.dart';
import 'package:spotify_clone/domin/repository/auth_repository.dart';
import 'package:spotify_clone/service_locator.dart';

class SignupUsecase extends UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call(CreateUserReq createUser) {
    return sl<AuthRepository>().signup(createUser);
  }
}
