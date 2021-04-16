import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  Future<User?> getUser();
  Future<User> getGoogleLogin();
  Future getFacebookLogin();
  Future getEmailPasswordLogin();
  Future<String> getToken();
  Future getLogout();
}
