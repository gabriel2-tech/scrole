import 'package:get/get.dart';

import '../../../services/firebase_auth_service.dart';

class AuthController extends GetxController{
  final RxBool authEnCour = false.obs;
  final AuthService _authService = AuthService();


  void loginWithGoogle(){
    _authService.signInWithGoogle();
    authEnCour.value = true;
  }
}