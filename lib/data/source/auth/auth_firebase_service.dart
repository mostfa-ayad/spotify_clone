import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:spotify_clone/data/model/auth/create_user_req.dart';
import 'package:spotify_clone/data/model/auth/signin_user_req.dart';

abstract class AuthFirebaseService {
  Future<Either> signin(SigninUserReq signinUser);
  Future<Either> signup(CreateUserReq createUser);
}

class AuthFirebaseServiceImpl implements AuthFirebaseService {
  @override
  Future<Either> signup(CreateUserReq createUser) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createUser.email, password: createUser.password);
      return const Right("Registered successfully");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return left('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return left('The account already exists for that email.');
      } else {
        return left('Something went wrong');
      }
    }
  }

  @override
  Future<Either> signin(SigninUserReq signinUser) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: signinUser.email, password: signinUser.password);
      return const Right("Logged in successfully");
    } on FirebaseAuthException catch (e) {
      String msg = "";
      if (e.code == 'user-not-found') {
        msg = 'No user found for that email.';
      } else if (e.code == 'invalid-email') {
        msg = 'Invalid email provided for that user.';
      } else if (e.code == 'wrong-password') {
        msg = 'Wrong password provided for that user.';
      } else {
        msg = 'Something went wrong';
      }

      return left(msg);
    }
  }
}
