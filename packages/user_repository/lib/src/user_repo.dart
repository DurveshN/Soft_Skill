import 'models/models.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class UserRepo {
  Stream<User?> get user;

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> setUserData(MyUser myUser);

  Future<void> signIn(String email, String password);

  Future<void> logOut();
}