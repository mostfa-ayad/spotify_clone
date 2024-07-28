import 'package:firebase_core/firebase_core.dart';
import 'package:spotify_clone/data/model/auth/create_user_req.dart';

abstract class AuthFirebaseService {
  Future<void> signin();
  Future<void> signup(CreateUserReq createUser);
}

class AuthFirebaseServiceImpl implements AuthFirebaseService {
  @override
  Future<void> signup(CreateUserReq createUser) {
   try{

   }on FirebaseException cach(e){

   }
  }

  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }
}
