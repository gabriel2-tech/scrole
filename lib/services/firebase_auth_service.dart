import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {

  Future<void> signInWithGoogle() async {
    print("yo");
    try {
      late UserCredential userCredential;

      if (kIsWeb) {
        GoogleAuthProvider googleProvider = GoogleAuthProvider();
        googleProvider.addScope('https://www.googleapis.com/auth/contacts.readonly');
        googleProvider.setCustomParameters({'login_hint': 'user@example.com'});
        userCredential = await FirebaseAuth.instance.signInWithPopup(googleProvider);
      } else {
        final GoogleSignIn googleSignIn = GoogleSignIn(
          serverClientId: "440940310378-2e9uk0jgmiql37a0s0269p6b05hf0bf3.apps.googleusercontent.com",
        );

        final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
        if (googleUser == null) throw Exception("Connexion annulée");

        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      }

      // ✅ Distinguer nouvel utilisateur vs existant
      final bool isNewUser = userCredential.additionalUserInfo?.isNewUser ?? false;
      final User user = userCredential.user!;

      if (isNewUser) {
        // Créer le document Firestore minimal
        // await _createUserDocument(user);
        Get.offAllNamed('/complete-profile');
      } else {
        // Charger le profil existant si besoin
        // await _loadUserDocument(user.uid);
        // Get.offAllNamed('/home');
      }

    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        // Même email, provider différent (ex: magic link + Google)
        // await _handleAccountMerge(e);
      } else {
        // Afficher l'erreur à l'utilisateur
        Get.snackbar('Erreur', e.message ?? 'Connexion échouée');
      }
    } catch (e) {
      if (e.toString().contains('annulée')) return; // L'utilisateur a fermé le dialogue
      Get.snackbar('Erreur', 'Une erreur est survenue');
    }
  }
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

}